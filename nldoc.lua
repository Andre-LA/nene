-- LPegRex is the only external dependency.
local lpegrex = require 'lpegrex'

--------------------------------------------------------------------------------
-- Utilities.

-- Walk iterator, used by `walk_nodes`.
local function walk_nodes_iterator(node, parent, parentindex)
  if node.tag then
    coroutine.yield(node, parent, parentindex)
  end
  for i=1,#node do
    local v = node[i]
    if type(v) == 'table' then
      walk_nodes_iterator(v, node, i)
    end
  end
end

-- Walk all nodes from an AST.
local function walk_nodes(ast)
  return coroutine.wrap(walk_nodes_iterator), ast
end

-- Read a file and return its contents as string.
local function read_file(filename)
  local file, err = assert(io.open(filename))
  local contents = file:read("*a")
  file:close()
  return contents
end

-- Write contents to a file.
local function write_file(filename, contents)
  local file, err = assert(io.open(filename,'w'))
  assert(file:write(contents))
  assert(file:close())
  return true
end

--------------------------------------------------------------------------------
-- Parser class, used to parse source codes.

local Parser = {}
local Parser_mt = {__index = Parser}

-- Creates a new Parser.
function Parser.create(grammar, comments_grammar, errors, defs)
  local source_patt = lpegrex.compile(grammar, defs)
  local comments_patt = lpegrex.compile(comments_grammar, defs)
  return setmetatable({
    source_patt = source_patt,
    comments_patt = comments_patt,
    errors = errors,
  }, Parser_mt)
end

-- Pretty print a parsing syntax error.
local function parse_error(self, source, name, errlabel, errpos)
  name = name or '<source>'
  local lineno, colno, line = lpegrex.calcline(source, errpos)
  local colhelp = string.rep(' ', colno-1)..'^'
  local errmsg = self.errors[errlabel] or errlabel
  error('syntax error: '..name..':'..lineno..':'..colno..': '..errmsg..
        '\n'..line..'\n'..colhelp)
end

-- Parse source into an AST.
function Parser:parse(source, name)
  local ast, errlabel, errpos = self.source_patt:match(source)
  if not ast then
    parse_error(self, source, name, errlabel, errpos)
  end
  return ast
end

-- Remove left common left indentations from a text.
local function trim_identantion(text)
  local initcol, ss = 0x7fffffff, {}
  -- find common indentation
  for line in text:gmatch('([^\n]*)\n?') do
    if #line > 0 then
      local charcol = line:find('[^%s]')
      if charcol then
        initcol = math.min(initcol, charcol)
      end
    end
    ss[#ss+1] = line
  end
  -- remove common indentation and trim right
  for i=1,#ss do
    ss[i] = ss[i]:sub(initcol):gsub('%s*$', '')
  end
  return table.concat(ss, '\n')
end

-- Trim spaces from comments.
local function trim_comments(comments)
  for i=1,#comments do
    local comment = comments[i]
    comment.text = trim_identantion(comment.text)
  end
  -- remove empty comments
  local i = 1
  while i <= #comments do
    local comment = comments[i]
    if comment.text == '' then
      table.remove(comments, i)
    else
      i = i + 1
    end
  end
end

-- Calculate comments line numbers.
local function calc_comments(comments, source)
  -- gather line number and calc comment texts
  for i=1,#comments do
    local comment = comments[i]
    comment.text, comment[1] = comment[1], nil
    -- calculate line numbers
    comment.lineno, comment.colno = lpegrex.calcline(source, comment.pos)
    comment.endlineno, comment.endcolno = lpegrex.calcline(source, comment.endpos-1)
  end
end

-- Combine neighbor comments.
local function combine_comments(comments, source)
  local i = 1
  while i < #comments do
    local c1 = comments[i]
    local c2 = comments[i+1]
    local inbetween = source:sub(c1.endpos, c2.pos-1)
    if c1.colno == c2.colno and
       c1.endlineno+1 == c2.lineno and
       c1.tag == c2.tag and
       inbetween:match('^%s*$') then
      comments[i] = {
        tag = c1.tag,
        text = c1.text..'\n'..c2.text,
        pos = c1.pos,
        endpos = c2.endpos,
        lineno = c1.lineno,
        endlineno = c2.endlineno,
        colno = c1.colno,
        endcolno = c2.endcolno,
        combined = true,
      }
      table.remove(comments, i+1)
    else
      i = i + 1
    end
  end
  return comments
end

-- Convert a list of comments to a map of line number and comment.
local function make_comments_by_line(comments)
  local comments_by_line = {}
  for i=1,#comments do
    local comment = comments[i]
    for lineno=comment.lineno,comment.endlineno do
      assert(not comments_by_line[lineno])
      comments_by_line[lineno] = comment
    end
  end
  return comments_by_line
end

-- Parse all comments from source into a map and a list of comments.
function Parser:parse_comments(source, name)
  local comments, errlabel, errpos = self.comments_patt:match(source)
  if not comments then
    parse_error(self, source, name, errlabel, errpos)
  end
  calc_comments(comments, source)
  combine_comments(comments, source)
  trim_comments(comments)
  local comments_by_line = make_comments_by_line(comments)
  return comments_by_line, comments
end

--------------------------------------------------------------------------------
-- Nelua Parser

-- Complete syntax grammar of Nelua defined in a single PEG.
local syntax_grammar = [==[
chunk           <-- SHEBANG? SKIP Block (!.)^UnexpectedSyntax

Block           <==(local / global /
                    FuncDef / Return /
                    Do / Defer /
                    If / Switch /
                    for /
                    While / Repeat /
                    Break / Continue /
                    Goto / Label /
                    Preprocess /
                    Assign / call /
                    `;`)*

-- Statements
Label           <== `::` @name @`::`
Return          <== `return` (expr (`,` @expr)*)?
Break           <== `break`
Continue        <== `continue`
Goto            <== `goto` @name
Do              <== `do` Block @`end`
Defer           <== `defer` Block @`end`
While           <== `while` @expr @`do` Block @`end`
Repeat          <== `repeat` Block @`until` @expr
If              <== `if` ifs (`else` Block)? @`end`
ifs             <-| @expr @`then` Block (`elseif` @expr @`then` Block)*
Switch          <== `switch` @expr `do`? @cases (`else` Block)? @`end`
cases           <-| (`case` @exprs @`then` Block)+
for             <-- `for` (ForNum / ForIn)
ForNum          <== iddecl `=` @expr @`,` forcmp~? @expr (`,` @expr)~? @`do` Block @`end`
ForIn           <== @iddecls @`in` @exprs @`do` Block @`end`
local           <-- `local` (localfunc / localvar)
global          <-- `global` (globalfunc / globalvar)
localfunc  : FuncDef  <== `function` $'local' @namedecl @funcbody
globalfunc : FuncDef  <== `function` $'global' @namedecl @funcbody
FuncDef         <== `function` $false @funcname @funcbody
funcbody        <-- `(` funcargs @`)` (`:` @funcrets)~? annots~? Block @`end`
localvar   : VarDecl  <== $'local' @iddecls (`=` @exprs)?
globalvar  : VarDecl  <== $'global' @globaldecls (`=` @exprs)?
Assign          <== vars `=` @exprs
Preprocess      <== PREPROCESS SKIP

-- Simple expressions
Number          <== NUMBER name? SKIP
String          <== STRING name? SKIP
Boolean         <== `true`->totrue / `false`->tofalse
Nilptr          <== `nilptr`
Nil             <== `nil`
Varargs         <== `...`
Id              <== name
IdDecl          <== name (`:` @typeexpr)~? annots?
typeddecl  : IdDecl <== name `:` @typeexpr annots?
globaldecl : IdDecl <== (idsuffixed / name) (`:` @typeexpr)~? annots?
globaldeclexpr  <-- globaldecl / PreprocessExpr
namedecl   : IdDecl <== name
Function        <== `function` @funcbody
InitList        <== `{` (field (fieldsep field)* fieldsep?)? @`}`
field           <-- Pair / expr
Paren           <== `(` @expr @`)`
DoExpr          <== `(` `do` Block @`end` @`)`
Type            <== `@` @typeexpr

Pair            <== `[` @expr @`]` @`=` @expr / name `=` @expr / `=` @id -> pair_sugar
Annotation      <== name annotargs?

-- Preprocessor replaceable nodes
PreprocessExpr  <== `#[` {@expr->0} @`]#`
PreprocessName  <== `#|` {@expr->0} @`|#`

-- Suffixes
Call            <== callargs
CallMethod      <== `:` @name @callargs
DotIndex        <== `.` @name
ColonIndex      <== `:` @name
KeyIndex        <== `[` @expr @`]`

indexsuffix     <-- DotIndex / KeyIndex
callsuffix      <-- Call / CallMethod

var             <-- (exprprim (indexsuffix / callsuffix+ indexsuffix)+)~>rfoldright /
                    id / deref
call            <-- (exprprim (callsuffix / indexsuffix+ callsuffix)+)~>rfoldright
exprsuffixed    <-- (exprprim (indexsuffix / callsuffix)*)~>rfoldright
idsuffixed      <-- (id DotIndex+)~>rfoldright
funcname        <-- (id DotIndex* ColonIndex?)~>rfoldright

-- Lists
callargs        <-| `(` (expr (`,` @expr)*)? @`)` / InitList / String
annotargs       <-| `(` (expr (`,` @expr)*)? @`)` / InitList / String / PreprocessExpr
iddecls         <-| iddecl (`,` @iddecl)*
funcargs        <-| (iddecl (`,` iddecl)* (`,` VarargsType)? / VarargsType)?
globaldecls     <-| globaldeclexpr (`,` @globaldeclexpr)*
exprs           <-| expr (`,` @expr)*
annots          <-| `<` @Annotation (`,` @Annotation)* @`>`
funcrets        <-| `(` typeexpr (`,` @typeexpr)* @`)` / typeexpr
vars            <-| var (`,` @var)*

-- Expression operators
opor      : BinaryOp  <== `or`->'or' @exprand
opand     : BinaryOp  <== `and`->'and' @exprcmp
opcmp     : BinaryOp  <== cmp @exprbor
opbor     : BinaryOp  <== `|`->'bor' @exprbxor
opbxor    : BinaryOp  <== `~`->'bxor' @exprband
opband    : BinaryOp  <== `&`->'band' @exprbshift
opbshift  : BinaryOp  <== (`<<`->'shl' / `>>>`->'asr' / `>>`->'shr') @exprconcat
opconcat  : BinaryOp  <== `..`->'concat' @exprconcat
oparit    : BinaryOp  <== (`+`->'add' / `-`->'sub') @exprfact
opfact    : BinaryOp  <== (`*`->'mul' / `///`->'tdiv' / `//`->'idiv' / `/`->'div' /
                           `%%%`->'tmod' / `%`->'mod') @exprunary
oppow     : BinaryOp  <== `^`->'pow' @exprunary
opunary   : UnaryOp   <== (`not`->'not' / `-`->'unm' / `#`->'len' /
                           `~`->'bnot' / `&`->'ref' / `$`->'deref') @exprunary
deref     : UnaryOp   <== `$`->'deref' @exprunary

-- Expressions
expr            <-- expror
expror          <-- (exprand opor*)~>foldleft
exprand         <-- (exprcmp opand*)~>foldleft
exprcmp         <-- (exprbor opcmp*)~>foldleft
exprbor         <-- (exprbxor opbor*)~>foldleft
exprbxor        <-- (exprband opbxor*)~>foldleft
exprband        <-- (exprbshift opband*)~>foldleft
exprbshift      <-- (exprconcat opbshift*)~>foldleft
exprconcat      <-- (exprarit opconcat*)~>foldleft
exprarit        <-- (exprfact oparit*)~>foldleft
exprfact        <-- (exprunary opfact*)~>foldleft
exprunary       <-- opunary / exprpow
exprpow         <-- (exprsimple oppow*)~>foldleft
exprsimple      <-- Number / String / Type / InitList / Boolean /
                    Function / Nilptr / Nil / DoExpr / Varargs / exprsuffixed
exprprim        <-- id / Paren

-- Types
RecordType      <== 'record' WORDSKIP @`{` (RecordField (fieldsep RecordField)* fieldsep?)? @`}`
UnionType       <== 'union' WORDSKIP @`{` (UnionField (fieldsep UnionField)* fieldsep?)? @`}`
EnumType        <== 'enum' WORDSKIP (`(` @typeexpr @`)`)~? @`{` @enumfields @`}`
FuncType        <== 'function' WORDSKIP @`(` functypeargs @`)`(`:` @funcrets)?
ArrayType       <== 'array' WORDSKIP @`(` @typeexpr (`,` @expr)? @`)`
PointerType     <== 'pointer' WORDSKIP (`(` @typeexpr @`)`)?
VariantType     <== 'variant' WORDSKIP `(` @typearg (`,` @typearg)* @`)`
VarargsType     <== `...` (`:` @name)?

RecordField     <== name @`:` @typeexpr
UnionField      <== name `:` @typeexpr / $false typeexpr
EnumField       <== name (`=` @expr)?

-- Type lists
enumfields      <-| EnumField (fieldsep EnumField)* fieldsep?
functypeargs    <-| (functypearg (`,` functypearg)* (`,` VarargsType)? / VarargsType)?
typeargs        <-| typearg (`,` @typearg)*

functypearg     <-- typeddecl / typeexpr
typearg         <-- typeexpr / `(` expr @`)` / expr

-- Type expression operators
typeopptr : PointerType   <== `*`
typeopopt : OptionalType  <== `?`
typeoparr : ArrayType     <== `[` expr? @`]`
typeopvar : VariantType   <== typevaris
typeopgen : GenericType   <== `(` @typeargs @`)`
typevaris : VariantType   <== `|` @typeexprunary (`|` @typeexprunary)*

typeopunary     <-- typeopptr / typeopopt / typeoparr

-- Type expressions
typeexpr        <-- (typeexprunary typevaris?)~>foldleft
typeexprunary   <-- (typeopunary* typexprsimple)->rfoldleft
typexprsimple   <-- RecordType / UnionType / EnumType / FuncType / ArrayType / PointerType /
                    VariantType / (typeexprprim typeopgen?)~>foldleft
typeexprprim    <-- idsuffixed / id

-- Common rules
name            <-- NAME SKIP / PreprocessName
id              <-- Id / PreprocessExpr
iddecl          <-- IdDecl / PreprocessExpr
cmp             <-- `==`->'eq' / forcmp
forcmp          <-- `~=`->'ne' / `<=`->'le' / `<`->'lt' / `>=`->'ge' / `>`->'gt'
fieldsep        <-- `,` / `;`

-- String
STRING          <-- STRING_SHRT / STRING_LONG
STRING_LONG     <-- {:LONG_OPEN {LONG_CONTENT} @LONG_CLOSE:}
STRING_SHRT     <-- {:QUOTE_OPEN {~QUOTE_CONTENT~} @QUOTE_CLOSE:}
QUOTE_OPEN      <-- {:qe: ['"] :}
QUOTE_CONTENT   <-- (ESCAPE_SEQ / !(QUOTE_CLOSE / LINEBREAK) .)*
QUOTE_CLOSE     <-- =qe
ESCAPE_SEQ      <-- '\'->'' @ESCAPE
ESCAPE          <-- [\'"] /
                    ('n' $10 / 't' $9 / 'r' $13 / 'a' $7 / 'b' $8 / 'v' $11 / 'f' $12)->tochar /
                    ('x' {HEX_DIGIT^2} $16)->tochar /
                    ('u' '{' {HEX_DIGIT^+1} '}' $16)->toutf8char /
                    ('z' SPACE*)->'' /
                    (DEC_DIGIT DEC_DIGIT^-1 !DEC_DIGIT / [012] DEC_DIGIT^2)->tochar /
                    (LINEBREAK $10)->tochar

-- Number
NUMBER          <-- {HEX_NUMBER / BIN_NUMBER / DEC_NUMBER}
HEX_NUMBER      <-- '0' [xX] @HEX_PREFIX ([pP] @EXP_DIGITS)?
BIN_NUMBER      <-- '0' [bB] @BIN_PREFIX ([pP] @EXP_DIGITS)?
DEC_NUMBER      <-- DEC_PREFIX ([eE] @EXP_DIGITS)?
HEX_PREFIX      <-- HEX_DIGIT+ ('.' HEX_DIGIT*)? / '.' HEX_DIGIT+
BIN_PREFIX      <-- BIN_DIGITS ('.' BIN_DIGITS?)? / '.' BIN_DIGITS
DEC_PREFIX      <-- DEC_DIGIT+ ('.' DEC_DIGIT*)? / '.' DEC_DIGIT+
EXP_DIGITS      <-- [+-]? DEC_DIGIT+

-- Comments
COMMENT         <-- '--' (COMMENT_LONG / COMMENT_SHRT)
COMMENT_LONG    <-- (LONG_OPEN LONG_CONTENT @LONG_CLOSE)->0
COMMENT_SHRT    <-- (!LINEBREAK .)*

-- Preprocess
PREPROCESS      <-- '##' (PREPROCESS_LONG / PREPROCESS_SHRT)
PREPROCESS_LONG <-- {:LONG_OPEN {LONG_CONTENT} @LONG_CLOSE:}
PREPROCESS_SHRT <-- {(!LINEBREAK .)*} LINEBREAK?

-- Long (used by string, comment and preprocess)
LONG_CONTENT    <-- (!LONG_CLOSE .)*
LONG_OPEN       <-- '[' {:eq: '='*:} '[' LINEBREAK?
LONG_CLOSE      <-- ']' =eq ']'

NAME            <-- !KEYWORD {NAME_PREFIX NAME_SUFFIX?}
NAME_PREFIX     <-- [_a-zA-Z%utf8seq]
NAME_SUFFIX     <-- [_a-zA-Z0-9%utf8seq]+

-- Miscellaneous
SHEBANG         <-- '#!' (!LINEBREAK .)* LINEBREAK?
SKIP            <-- (SPACE+ / COMMENT)*
WORDSKIP        <-- !NAME_SUFFIX SKIP
LINEBREAK       <-- %cn %cr / %cr %cn / %cn / %cr
SPACE           <-- %sp
HEX_DIGIT       <-- [0-9a-fA-F]
BIN_DIGITS      <-- [01]+ !DEC_DIGIT
DEC_DIGIT       <-- [0-9]
EXTRA_TOKENS    <-- `[[` `[=` `--` `##` -- Force defining these tokens.
]==]

-- Grammar parsing only commends and ignoring the rest.
local comments_grammar = [==[
comments        <-| (LongComment / ShortComment / .)*

LongComment    <== '--' LONG_OPEN LINEBREAK_SKIP {LONG_CONTENT} @LONG_CLOSE
ShortComment   <== '--' SHORT_SKIP {(!(SHORT_SKIP LINEBREAK) .)*} SHORT_SKIP

SHORT_SKIP      <-- (SPACE / '-')*

LONG_CONTENT    <-- (!LONG_CLOSE .)*
LONG_OPEN       <-- '[' {:eq: '='*:} '['
LONG_CLOSE      <-- SKIP ']' =eq ']'

SKIP            <-- %sp*
LINEBREAK_SKIP  <-- (SPACE* LINEBREAK)?
SPACE           <-- [ %ct%cf%cv]
LINEBREAK       <-- %cn %cr / %cr %cn / %cn / %cr
]==]

-- List of syntax errors.
local syntax_errors = {
["Expected_do"]             = "expected `do` keyword to begin a statement block",
["Expected_then"]           = "expected `then` keyword to begin a statement block",
["Expected_end"]            = "expected `end` keyword to close a statement block",
["Expected_until"]          = "expected `until` keyword to close a `repeat` statement",
["Expected_cases"]          = "expected `case` keyword in `switch` statement",
["Expected_in"]             = "expected `in` keyword in `for` statement",
["Expected_Annotation"]     = "expected an annotation expression",
["Expected_expr"]           = "expected an expression",
["Expected_exprand"]        = "expected an expression after operator",
["Expected_exprcmp"]        = "expected an expression after operator",
["Expected_exprbor"]        = "expected an expression after operator",
["Expected_exprbxor"]       = "expected an expression after operator",
["Expected_exprband"]       = "expected an expression after operator",
["Expected_exprbshift"]     = "expected an expression after operator",
["Expected_exprconcat"]     = "expected an expression after operator",
["Expected_exprfact"]       = "expected an expression after operator",
["Expected_exprunary"]      = "expected an expression after operator",
["Expected_name"]           = "expected an identifier name",
["Expected_namedecl"]       = "expected an identifier name",
["Expected_Id"]             = "expected an identifier name",
["Expected_IdDecl"]         = "expected an identifier declaration",
["Expected_typearg"]        = "expected an argument in type expression",
["Expected_typeexpr"]       = "expected a type expression",
["Expected_typeexprunary"]  = "expected a type expression",
["Expected_funcbody"]       = "expected function body",
["Expected_funcrets"]       = "expected function return types",
["Expected_funcname"]       = "expected a function name",
["Expected_globaldecl"]     = "expected a global identifier declaration",
["Expected_var"]            = "expected a variable",
["Expected_enumfields"]     = "expected a field in `enum` type",
["Expected_typeargs"]       = "expected arguments in type expression",
["Expected_callargs"]       = "expected call arguments",
["Expected_exprs"]          = "expected expressions",
["Expected_globaldecls"]    = "expected global identifiers declaration",
["Expected_iddecls"]        = "expected identifiers declaration",
["Expected_("]              = "expected parenthesis `(`",
["Expected_,"]              = "expected comma `,`",
["Expected_:"]              = "expected colon `:`",
["Expected_="]              = "expected equals `=`",
["Expected_{"]              = "expected curly brace `{`",
["Expected_)"]              = "unclosed parenthesis, did you forget a `)`?",
["Expected_::"]             = "unclosed label, did you forget a `::`?",
["Expected_>"]              = "unclosed angle bracket, did you forget a `>`?",
["Expected_]"]              = "unclosed square bracket, did you forget a `]`?",
["Expected_}"]              = "unclosed curly brace, did you forget a `}`?",
["Expected_]#"]             = "unclosed preprocess expression, did you forget a `]#`?",
["Expected_|#"]             = "unclosed preprocess name, did you forget a `|#`?",
["Expected_LONG_CLOSE"]     = "unclosed long, did you forget a `]]`?",
["Expected_QUOTE_CLOSE"]    = "unclosed string, did you forget a quote?",
["Expected_ESCAPE"]         = "malformed escape sequence",
["Expected_BIN_PREFIX"]     = "malformed binary number",
["Expected_EXP_DIGITS"]     = "malformed exponential number",
["Expected_HEX_PREFIX"]     = "malformed hexadecimal number",
["UnexpectedSyntax"]        = "unexpected syntax",
}

local defs = {}

-- Auxiliary function for 'Pair' syntax sugar.
function defs.pair_sugar(idnode)
  return idnode[1], idnode
end

local parser = Parser.create(syntax_grammar, comments_grammar, syntax_errors, defs)

--------------------------------------------------------------------------------
-- Emitter class, used to emit large texts.

-- The emitter class.
local Emitter = {}
Emitter.__index = Emitter

-- Creates a new emitter.
function Emitter.create()
  return setmetatable({}, Emitter)
end

-- Appends a text.
function Emitter:add(s)
  self[#self+1] = s
end

-- Combine all texts.
function Emitter:generate()
  return table.concat(self)
end

--------------------------------------------------------------------------------
-- Generator class, used to generate the documentation.

-- The generator class.
local Generator = {}
local Generator_mt = {__index = Generator}

-- Default symbol template.
local symbol_template = [[
### $(name)

```$(lang)
$(code)
```

$(text)

]]

-- Default heading template.
local top_template = [[
## $(name)

$(text)

]]

local bottom_template = [[
---
]]

-- Create a new generator from visitors.
function Generator.create(visitors, lang)
  return setmetatable({
    top_template = top_template,
    symbol_template = symbol_template,
    bottom_template = bottom_template,
    lang = lang,
    visitors = visitors
  }, Generator_mt)
end

-- Emit documentation.
function Generator:emit(source, filename, ast, comments, options, emitter)
  -- setup options
  options = options or {}
  options.include_names = options.include_names or {}
  options.top_template = options.top_template or self.top_template
  options.symbol_template = options.symbol_template or self.symbol_template
  -- create emitter
  if not emitter then
    emitter = Emitter.create()
  end
  -- create context
  local context = {
    ast = ast,
    source = source,
    filename = filename,
    options = options,
    comments = comments,
    lang = self.lang,
    symbols = {},
  }
  local visitors = self.visitors
  -- emit top heading
  local topcomment = comments[1]
  if topcomment and visitors.TopComment then
    visitors.TopComment(context, topcomment, emitter)
  end
  -- emit nodes
  for node, parent in walk_nodes(ast) do
    node.parent = parent
    local visit = visitors[node.tag]
    if visit then
      visit(context, node, emitter)
    end
  end
  emitter:add(bottom_template)
  return emitter
end

--------------------------------------------------------------------------------
-- Nelua documentation generator

local substitute_vars_mt = {}
local substitute_vars = setmetatable({}, substitute_vars_mt)
local substitute_defs = {}
function substitute_defs.to_var(k)
  local v = substitute_vars[k]
  return v ~= nil and tostring(v) or ''
end
local substitute_patt = lpegrex.compile([[
  pat <- {~ (var / .)* ~}
  var <- ('$(' {[_%a]+} ')') -> to_var
]], substitute_defs)

-- Substitute keywords between '$()' from a text using values from a table.
local function template_substitute(format, vars)
  substitute_vars_mt.__index = vars
  return substitute_patt:match(format)
end

-- Trim comments on the right.
local function rtrim_comments(text)
  text = text:gsub('%s*%-%-%[=*%[.*$', '') -- trim multi line comments
  repeat
    local n
    text, n = text:gsub('%s%-%-[^\n]*%s*$', '')
  until n == 0
  return text
end

-- Trim unwanted text in declarations.
local function trimdecl(text)
  return rtrim_comments(text) -- remove trailing comments
             :gsub('%s*$', '') -- remove trailing spaces
             :gsub('%s*%b<>$', '') -- remove annotations
end

-- Trim unwanted text in definitions.
local function trimdef(text)
  text = rtrim_comments(text) -- remove trailing comments
             :gsub('%s*$', '') -- remove trailing spaces

  return text
end

-- Filter symbol by name.
local function document_symbol(context, symbol, emitter)
  if not symbol.name then
    -- probably a preprocessor name, ignore
    return false
  end
  local symbols, inclnames = context.symbols, context.options.include_names
  local classname = symbol.name:match('(.*)[.:][_%w]+$')
  if classname and not symbols[classname] and not inclnames[classname] then
    -- class symbol is not wanted
    return false
  end
  if not symbol.topscope or (symbol.declscope == 'local' and not inclnames[symbol.name]) then
    -- not a global or wanted symbol
    return false
  end
  table.insert(symbols, symbol)
  symbols[symbol.name] = true
  emitter:add(template_substitute(context.options.symbol_template, symbol))
  return true
end

-- Generator visitors.
local visitors = {}

-- Visit top most comment.
function visitors.TopComment(context, comment, emitter)
  local filename = context.filename
  local name = context.options.name
  if not name then
    name = filename:match('([_%w]+)%.[_%w]+$') or filename
    context.name = name
  end
  local consts = {
    name = name,
    filename = filename,
    text = comment.text,
  }
  emitter:add(template_substitute(context.options.top_template, consts))
end

-- Visit function definitions.
function visitors.FuncDef(context, node, emitter)
  local declscope = node[1]
  local blocknode = node[6]
  local lineno = lpegrex.calcline(context.source, node.pos)
  local chunk = context.source:sub(node.pos, blocknode.pos-1)
  local name = chunk:match('function%s+([^%(]*)%s*%(')
  local comment = context.comments[lineno-1]
  local decl = trimdecl(chunk)
  local code = declscope and declscope..' '..decl or decl
  local symbol = {
    tag = node.tag,
    name = name,
    code = code,
    comment = comment,
    text = comment and comment.text,
    lineno = lineno,
    topscope = node.parent == context.ast,
    declscope = declscope,
    node = node,
    lang = context.lang,
  }
  document_symbol(context, symbol, emitter)
end

-- Visit variable declarations.
function visitors.VarDecl(context, node, emitter)
  local declscope = node[1]
  local varnodes = node[2]
  local valnodes = node[3]
  for i,varnode in ipairs(varnodes) do
    local valnode = valnodes and valnodes[i]
    local lineno = lpegrex.calcline(context.source, varnode.pos)
    local chunk = context.source:sub(varnode.pos, varnode.endpos-1)
    local comment = context.comments[lineno-1]
    local decl = trimdecl(chunk)
    local name = decl:match('^[_%.%w]+')
    local code = declscope and declscope..' '..decl or decl
    if valnode then
      local valpos, valendpos = valnode.pos, valnode.endpos
      for vnode in walk_nodes(valnode) do
        valpos = math.min(valpos, vnode.pos)
        valendpos = math.max(valendpos, vnode.endpos)
      end
      local def = trimdef(context.source:sub(valpos, valendpos-1))
      if def:find('^@') then
        code = code..' = '..def
      end
    end
    local symbol = {
      tag = node.tag,
      name = name,
      code = code,
      comment = comment,
      text = comment and comment.text,
      lineno = lineno,
      topscope = node.parent == context.ast,
      declscope = declscope,
      node = node,
      lang = context.lang,
    }
    document_symbol(context, symbol, emitter)
  end
end

local generator = Generator.create(visitors, 'nelua')

--[[
Generate documentation from a source file.
All the code resumes to this single function.
]]
local function generate_doc(emitter, filename, options)
  local source = read_file(filename)
  local ast = parser:parse(source, filename)
  local comments = parser:parse_comments(source, filename)
  generator:emit(source, filename, ast, comments, options, emitter)
end

local nldoc = {
  -- Utilities
  walk_nodes = walk_nodes,
  read_file = read_file,
  write_file = write_file,

  -- Parser
  Parser = Parser,
  syntax_grammar = syntax_grammar,
  comments_grammar = comments_grammar,
  syntax_errors = syntax_errors,
  defs = defs,
  parser = parser,

  -- Generator
  Emitter = Emitter,
  Generator = Generator,
  visitors = visitors,
  generator = generator,

  -- The most important function.
  generate_doc = generate_doc,
}

return nldoc

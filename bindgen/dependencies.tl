--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local record Dependencies
   record Dependency
      {string}
      is_header: boolean
   end
   dependencies: {string:Dependency}
   header: string
end

return Dependencies

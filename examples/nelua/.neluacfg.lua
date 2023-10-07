return {
  add_path = {
    "../../bindings/nelua/"
  },
  cflags = "-I../../libnene/include -I../../libnene/include/SDL2",
  ldflags = "-L../../libnene/lib -L../../libnene/lib64 -Wl,-rpath=$ORIGIN/../../libnene/lib64",
}

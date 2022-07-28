#include <stdio.h>
#include "uv.h"

int main() {
  uv_loop_t* loop = uv_default_loop();

  puts("Default loop.");
  uv_run(loop, UV_RUN_DEFAULT);
  
  uv_loop_close(loop);
  return 0;
}
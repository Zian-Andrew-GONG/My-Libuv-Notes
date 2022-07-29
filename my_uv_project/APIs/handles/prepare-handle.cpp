/* 
 * uv_prepare_init() 初始化 prepare handle
 * 
 * uv_prepare_start() 启动 prepare handle
 * 
 * uv_prepare_stop() 停止 prepare handle
 */

#include <stdio.h>
#include "uv.h"

int64_t counter = 0;
void prepare_cb(uv_prepare_t* prepare) {
  counter++;
  printf("wait for preparing ...\n");
  if(counter == 1) uv_prepare_stop(prepare);
}

int main() {
  uv_prepare_t prepare;

  uv_prepare_init(uv_default_loop(), &prepare);
  uv_prepare_start(&prepare, prepare_cb);

  printf("Prepare...\n");
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  uv_loop_close(uv_default_loop());

  return 0;
}
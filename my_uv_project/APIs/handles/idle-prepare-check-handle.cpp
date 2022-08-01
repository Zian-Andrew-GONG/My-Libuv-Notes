/* 
 * Idle handles will run the given callback once per loop iteration, right before the uv_prepare_t handles.
 * uv_idle_init() 初始化 idle handle
 * uv_idle_start() 启动 idle handle
 * uv_idle_stop() 停止 idle handle
 * 
 * Prepare handles will run the given callback once per loop iteration, right before polling for i/o.
 * uv_prepare_init() 初始化 prepare handle
 * uv_prepare_start() 启动 prepare handle
 * uv_prepare_stop() 停止 prepare handle
 * 
 * Check handles will run the given callback once per loop iteration, right after polling for i/o.
 * uv_check_init() 初始化 check handle
 * uv_check_start() 启动 check handle
 * uv_check_stop() 停止 check handle
 */

#include <stdio.h>
#include "uv.h"

int64_t counter = 0;

void wait_for_a_while(uv_idle_t* handle) {
  counter++;
  printf("wait for a while ...\n");
  if (counter >= 10)
    uv_stop(uv_default_loop());
}

void check_cb(uv_check_t* check) {
  printf("wait for checking ...\n\n");
}

void prepare_cb(uv_prepare_t* prepare) {
  printf("wait for preparing ...\n");
  if(counter >= 5) 
    uv_prepare_stop(prepare);
}

int main() {
  uv_prepare_t prepare;
  uv_check_t check;
  uv_idle_t idler;

  uv_idle_init(uv_default_loop(), &idler);
  uv_idle_start(&idler, wait_for_a_while);

  uv_check_init(uv_default_loop(), &check);
  uv_check_start(&check, check_cb);

  uv_prepare_init(uv_default_loop(), &prepare);
  uv_prepare_start(&prepare, prepare_cb);

  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  uv_loop_close(uv_default_loop());

  return 0;
}
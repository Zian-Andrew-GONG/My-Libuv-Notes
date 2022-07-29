/* 
 * uv_timer_init() 初始化 timer handle
 * 
 * uv_timer_start() 启动 timer。
 *   如果 timeout 参数为 0，cb 在下一次轮询时触发；
 *   如果 timeout 参数不为 0，cb 在第一次轮询时等待 timeout 毫秒后触发，之后的轮询中等待 repeat 毫秒后触发。
 * 
 * uv_timer_stop() 停止 timer。
 * 
 * uv_timer_again() 停止 timer，然后 timer->repeat 值作为超时时间启动 timer。
 * 
 * uv_timer_set_repeat() get timer repeat value in milliseconds
 * uv_timer_get_repeat() get timer repeat value
 * 
 * uv_timer_get_due_in() Get the timer due value or 0 if it has expired. The time is relative to uv_now().
 */

#include <stdio.h>
#include "uv.h"

int64_t counter = 0;

void timer_cb(uv_timer_t* timer) {
  counter++;
  printf("wait for a while ...\n");
  printf("uv_timer_get_repeat = %llu\n", uv_timer_get_repeat(timer));
  // printf("uv_timer_get_due_in = %llu\n", uv_timer_get_due_in(timer));
  if(counter == 3) uv_timer_set_repeat(timer, 500);
  if(counter == 5) uv_timer_again(timer);
  if (counter >= 10)
    uv_timer_stop(timer);
}

int main() {
  uv_timer_t timer;

  uv_timer_init(uv_default_loop(), &timer);
  uv_timer_start(&timer, timer_cb, 1000, 2000);

  printf("Timer...\n");
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  uv_loop_close(uv_default_loop());

  return 0;
}
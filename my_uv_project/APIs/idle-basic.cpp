/* 
 * uv_idle_t 类型句柄会在每次 loop 轮询时调用 idle callback，
 * 调用次序在 uv_prepare_t 句柄之前；
 * uv_idle_t 和 uv_prepare_t 的 不同之处在于，
 * uv_idle_t active 时，loop 会使用 timeout = 0 的 poll 方法，
 * 而不会阻塞 I/O。
 */

#include <stdio.h>
#include <uv.h>

int64_t counter = 0;

void wait_for_a_while(uv_idle_t* handle) {
  counter++;
  printf("wait for a while ...\n");
  if (counter >= 10)
    uv_idle_stop(handle);
}

int main() {
  uv_idle_t idler;

  uv_idle_init(uv_default_loop(), &idler);
  uv_idle_start(&idler, wait_for_a_while);

  printf("Idling...\n");
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  uv_loop_close(uv_default_loop());
  return 0;
}

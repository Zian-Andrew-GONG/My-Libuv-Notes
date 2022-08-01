/* 
 * uv_signal_init() 初始化 signal handle
 * 
 * uv_signal_start() 启动 signal handle，监视给定的 signal
 * 
 * uv_signal_start_oneshot() 在收到 signal 后 handle 重置
 * 
 * uv_signal_stop() 停止 signal handle
 */

#include "uv.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int64_t counter = 0;
void signal_cb(uv_signal_t* signal, int signum) {
  printf("Signal received: %d\n", signum);
  alarm(2);
  if(counter++ >= 5) uv_signal_stop(signal);
}

int main() {
  uv_signal_t signal1;
  uv_signal_init(uv_default_loop(), &signal1);
  uv_signal_start(&signal1, signal_cb, SIGALRM);
  alarm(1);
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  uv_loop_close(uv_default_loop());
  return 0;
}
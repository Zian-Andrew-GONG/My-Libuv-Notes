/* 
 * uv_loop_init() 初始化 uv_loop_t 数据结构；
 * 
 * uv_loop_configure() 可以利用 option 对 loop 进行更多设置，
 * 支持的 options：
 *   UV_LOOP_BLOCK_SIGNAL：轮询新事件时阻止信号，后一个参数是信号编号；目前只支持 SIGPROF。
 *     出错：uv_loop_configure(&loop, UV_LOOP_BLOCK_SIGNAL, 0)
 *     成功：uv_loop_configure(&loop, UV_LOOP_BLOCK_SIGNAL, SIGPROF) 
 *   UV_METRICS_IDLE_TIME：累积 loop 花费在 event provider 的空闲时间。
 *     在使用 uv_metrics_idle_time() 时会有用。
 * 
 * uv_run() 启动事件循环，运行方式取决于第二个参数：
 *   UV_RUN_DEFAULT：运行事件循环，直到完成所有的 handles 和 requests。
 *   UV_RUN_ONCE：轮询 I/O 一次，如果没有 pending 的 callback，函数将阻塞。
 *   UV_RUN_NOWAIT：轮询 I/O 一次，如果没有 pending 的 callback，函数将不会阻塞。
 *     对于 UV_RUN_ONCE 和 UV_RUN_NOWAIT，
 *     Returns zero when done (no active handles or requests left), 
 *     or non-zero if more callbacks are expected 
 *     (meaning you should run the event loop again sometime in the future).
 * 
 * uv_loop_close() 释放 loop 的内部资源。
 * 只有在 loop 执行完成而且所有的 handles 和 requests 都 closed 后才会真正被调用。
 */

#include <stdio.h>
#include <stdlib.h>
#include "uv.h"

int main() {
  uv_loop_t *loop = new uv_loop_t;
  uv_loop_init(loop);

  printf("Hello world!\n");
  uv_run(loop, UV_RUN_DEFAULT);

  uv_loop_close(loop);
  delete loop;
  return 0;
}

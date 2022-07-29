/* 
 * uv_stop() 使 uv_run() 尽快停止，调用后 loop 不会开始下一轮轮询。
 * 如果在 I/O blocking 之前被调用，本轮 loop 不会在 I/O 阻塞，直接停止。
 * 
 * uv_walk() 遍历句柄列表，调用 walk_cb。
 * 
 * uv_loop_get_data() 返回 loop->data。
 * uv_loop_set_data() 设置 loop->data。
 */

#include <stdio.h>
#include "uv.h"

int main() {
  uv_loop_t* loop = uv_default_loop();

  uv_run(loop, UV_RUN_DEFAULT);
  
  uv_loop_close(loop);
  return 0;
}
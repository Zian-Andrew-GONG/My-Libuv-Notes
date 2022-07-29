/* 
 * uv_default_loop() 直接返回一个 default loop，
 * 这种方式返回的 loop 和 uv_loop_init() 返回的实际上并无区别。
 * 有一点不同是返回的这个 uv_loop_t 结构体是一个全局变量，因此是线程不安全的。
 * 
 * uv_loop_size() 返回 uv_loop_t 结构体的大小。
 * 
 * uv_backend_fd() 获取 backend fd。
 * 
 * uv_backend_timeout() 获取 poll timeout。
 * 
 * uv_now() 返回 now 时间戳，从任意时间点单调递增，并不代表现在的真实时间。
 * uv_update_time() 更新 now 时间戳。
 * 
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

  printf("Default loop.");
  printf("uv_loop_size = {%lu}\n", uv_loop_size());
  printf("uv_backend_fd = {%d}\n", uv_backend_fd(uv_default_loop()));
  printf("uv_backend_timeout = {%d}\n", uv_backend_timeout(uv_default_loop()));
  printf("uv_now = {%llu}\n", uv_now(uv_default_loop()));
  
  uv_run(loop, UV_RUN_DEFAULT);

  uv_loop_close(loop);
  return 0;
}
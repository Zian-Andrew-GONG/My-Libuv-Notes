/* 
 * uv_is_active() 如果 handle is active，返回非零；否则返回0。
 *   active 状态取决于 handle 类型：
 *   uv_async 始终处于 active 状态，除非调用 uv_close() 将其关闭。
 *   uv_pipe_t、uv_tcp_t、uv_udp_t 等处理 I/O 的 handle 在执行涉及 I/O 的操作时处于 active 状态，
 *     例如 reading、writing、connecting、accepting 等。
 *   uv_check_t、uv_idle_t、uv_timer_t 等在调用 uv_check_start()、uv_idle_start() 等函数时为 active
 * 
 * uv_is_closing() Returns non-zero if the handle is closing or closed, zero otherwise.
 *   This function should only be used between the initialization of the handle 
 *   and the arrival of the close callback.
 * 
 * uv_close() 请求关闭 handle，随后异步地调用 close_cb。
 *   uv_close() 必须在每个 handle 被释放内存之前调用。
 *   不仅如此，handle 的内存只能在 close_cb 中或 close_cb 返回后释放。
 * 
 * uv_ref() 引用一个给定的 handle。
 * uv_unref() 取消引用一个给定的 handle。
 * uv_has_ref() Returns non-zero if the handle referenced, zero otherwise.
 * 
 * uv_handle_size() 返回给的 handle 类型的大小。
 * 
 * uv_send_buffer_size() 获取或设置操作系统用于套接字的发送缓冲区的大小。
 * uv_recv_buffer_size() 获取或设置操作系统用于套接字的接收缓冲区的大小。
 * 
 * uv_handle_get_loop() return handle->loop
 * uv_handle_get_data() return handle->data
 * uv_handle_set_data() set handle->data
 * uv_handle_get_type() return handle->type
 * uv_handle_type_name() return handle type NAME
 */


#include <stdio.h>
#include "uv.h"

int main() {

  return 0;
}
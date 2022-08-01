/* 
 * 往往更推荐 uv_tcp_t or uv_udp_t
 *  
 * uv_poll_init() 使用文件描述符初始化一个 handle
 * uv_poll_init_socket() 使用 socket 描述符初始化一个 handle；
 *   在 Unix 上和 uv_poll_init() 一样，在 windows 上不同。
 * 
 * uv_poll_start() 开始 poll；
 *   event 有 UV_READABLE, UV_WRITABLE, UV_PRIORITIZED and UV_DISCONNECT；
 *   其中，UV_PRIORITIZED 用来监视 sysfs interrupts or TCP out-of-band messages.
 *   UV_DISCONNECT 可用来 optimize the shutdown path 
 * 
 * uv_poll_stop() 停止轮询文件描述符，立即生效。
 */

#include "uv.h"
#include <stdio.h>

int main() {

  return 0;
}
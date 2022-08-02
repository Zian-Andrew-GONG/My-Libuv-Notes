/* 
 * uv_tcp_t 相当于 uv_stream_t 的子类
 * 
 * uv_tcp_init() 初始化 tcp handle，但不会生成 socket
 * uv_tcp_init_ex() 使用 flags 初始化 tcp handle，同时根据 flag 创建 socket
 *   如果 flags = AF_UNSPEC，则等同于 uv_tcp_init()
 * 
 * uv_tcp_open() open an existing file descriptor or SOCKET as a TCP handle
 * 
 * uv_tcp_nodelay() enable TCP_NODELAY, which disables Nagle’s algorithm.
 * 
 * uv_tcp_keepalive() enable / disable TCP keep-alive. 
 *   delay is the initial delay in seconds, ignored when enable is zero.
 * 
 * uv_tcp_simultaneous_accepts() enable / disable simultaneous asynchronous accept 
 *   requests that are queued by the operating system 
 *   when listening for new TCP connections.
 * 
 * uv_tcp_bind() bind the handle to an address and port
 * 
 * uv_tcp_getsockname() Get the current address
 * uv_tcp_getpeername() Get the address of the peer connected to the handle
 * 
 * uv_tcp_connect() Establish an IPv4 or IPv6 TCP connection
 * 
 * uv_tcp_close_reset() 通过发送 RST 数据包重置 TCP 连接。
 * 
 * uv_socketpair() 创建一对具有指定属性的连接套接字。 
 */

#include <stdio.h>
#include "uv.h"

int main() {
  
  return 0;
}
/* 
 * uv_udp_init() 初始化一个 UDP handle，但不会生成 socket
 * uv_udp_init_ex() 使用 flags 初始化 UDP handle，同时根据 flag 创建 socket
 *   如果 flags = AF_UNSPEC，则等同于 uv_udp_init()
 * 
 * uv_udp_open() Opens an existing file descriptor or Windows SOCKET as a UDP handle.
 * 
 * uv_udp_bind() Bind the UDP handle to an IP address and port.
 * 
 * uv_udp_connect() Associate the UDP handle to a remote address and port
 * 
 * uv_udp_getpeername() Get the remote IP and port of the UDP handle on connected UDP handles.
 * uv_udp_getsockname() Get the local IP and port of the UDP handle.
 * 
 * uv_udp_set_membership() Set membership for a multicast address
 * uv_udp_set_source_membership() Set membership for a source-specific multicast group.
 * uv_udp_set_multicast_loop() Set IP multicast loop flag. Makes multicast packets loop back to local sockets.
 * uv_udp_set_multicast_ttl() Set the multicast ttl.
 * uv_udp_set_multicast_interface() Set the multicast interface to send or receive data on.
 * 
 * uv_udp_set_broadcast() Set broadcast on or off.
 * 
 * uv_udp_set_ttl() Set the time to live.
 * 
 * uv_udp_send() Send data over the UDP socket.
 * uv_udp_try_send() Same as uv_udp_send(), but won’t queue a send request if it can’t be completed immediately.
 * 
 * uv_udp_recv_start() Prepare for receiving data.
 * 
 * uv_udp_using_recvmmsg() 在 UDP handle 创建时使用了 UV_UDP_RECVMMSG flag 而且平台支持 recvmmsg 时返回 1，否则返回 0。
 * 
 * uv_udp_recv_stop() Stop listening for incoming datagrams.
 * 
 * uv_udp_get_send_queue_size() Returns handle->send_queue_size.
 * uv_udp_get_send_queue_count() Returns handle->send_queue_count.
 */

#include <stdio.h>
#include "uv.h"

int main() {
  
  return 0;
}

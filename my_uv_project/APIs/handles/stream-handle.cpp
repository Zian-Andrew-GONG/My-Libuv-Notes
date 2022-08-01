/* 
 * uv_shutdown() 在 pending 的 write request 完成后关闭写流。
 * uv_listen() start listening for incoming connections。
 * uv_accept() accept incoming connections
 * 
 * uv_read_start() read data from an incoming stream
 * uv_read_stop() stop reading data from the stream
 * 
 * uv_write() write data to stream
 * uv_write2() extended write function for sending handles over a pipe
 * uv_try_write() 同 uv_write()，但如果不能立即完成，则不会排队
 * uv_try_write2() 同 uv_write2()，但如果不能立即完成，则不会排队
 * 
 * uv_is_readable(), uv_is_writable() 
 * 
 * uv_stream_set_blocking() enable or disable blocking mode for a stream.
 * uv_stream_get_write_queue_size() returns stream->write_queue_size
 */

#include <stdio.h>
#include "uv.h"

int main() {
  
  return 0;
}






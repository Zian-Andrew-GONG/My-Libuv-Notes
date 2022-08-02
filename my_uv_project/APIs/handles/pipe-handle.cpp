/* 
 * uv_pipe_t 相当于 uv_stream_t 的子类
 * 
 * uv_pipe_init() 初始化 pipe handle
 * 
 * uv_pipe_open() open an existing file descriptor or HANDLE as a pipe
 * 
 * uv_pipe_bind() Bind the pipe to a file path (Unix) or a name (Windows)
 * 
 * uv_pipe_connect() Connect to the Unix domain socket or the named pipe
 * 
 * uv_pipe_getsockname() Get the name of the Unix domain socket or the named pipe
 * uv_pipe_getpeername() Get the name of the Unix domain socket or the named pipe to which the handle is connected.
 * 
 * uv_pipe_pending_count()
 * uv_pipe_pending_type() Used to receive handles over IPC pipes.
 * 
 * uv_pipe_chmod() falgs: UV_WRITABLE, UV_READABLE or UV_WRITABLE | UV_READABLE
 * 
 * uv_pipe() Create a pair of connected pipe handles. 
 */

#include <stdio.h>
#include "uv.h"

int main() {
  
  return 0;
}
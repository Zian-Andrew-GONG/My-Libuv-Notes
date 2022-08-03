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
#include <stdio.h>
#include <unistd.h>
#define BUF_SIZE 30


int main() {
  uv_pipe_t pipe1;
  uv_pipe_t pipe2;
  int pid;
  char str[] = "Who are you? \n";
  char buf[BUF_SIZE];
  uv_file fds[2];

  uv_pipe_init(uv_default_loop(), &pipe1, 0);
  uv_pipe_open(&pipe1, fds[0]);
  uv_pipe_init(uv_default_loop(), &pipe2, 0);
  uv_pipe_open(&pipe2, fds[1]);

  // uv_pipe(fds, UV_READABLE, UV_WRITABLE);

  pid = fork();
  if(pid == 0) { // 子进程 写
    write(fds[1], str, sizeof(str));
  }
  else {  // 父进程 读
    read(fds[0], buf, BUF_SIZE);
    puts(buf);
  }
  return 0;
}
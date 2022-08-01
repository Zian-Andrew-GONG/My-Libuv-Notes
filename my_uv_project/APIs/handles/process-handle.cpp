/* 
 * uv_disable_stdio_inheritance() 禁止此进程继承父进程的 fds 和 handles
 * 
 * uv_spawn() 初始化 process handle 并启动进程
 * 
 * uv_process_kill() 通过 handle 杀死进程
 * uv_kill() 通过 PID 杀死进程
 * 
 * uv_process_get_pid() Returns handle->pid
 */

#include <stdio.h>
#include <inttypes.h>

#include <uv.h>

uv_loop_t *loop;
uv_process_t child_req;
uv_process_options_t options;

void on_exit(uv_process_t *req, int64_t exit_status, int term_signal) {
  fprintf(stderr, "Process exited with status %" PRId64 ", signal %d\n", exit_status, term_signal);
  uv_close((uv_handle_t*) req, NULL);
}

int main() {
  loop = uv_default_loop();

  char* args[3];
  args[0] = "mkdir";
  args[1] = "test-dir";
  args[2] = NULL;

  options.exit_cb = on_exit;
  options.file = "mkdir";
  options.args = args;

  int r;
  if ((r = uv_spawn(loop, &child_req, &options))) {
    fprintf(stderr, "%s\n", uv_strerror(r));
    return 1;
  } else {
    fprintf(stderr, "Launched process with ID %d\n", child_req.pid);
  }

  return uv_run(loop, UV_RUN_DEFAULT);
}

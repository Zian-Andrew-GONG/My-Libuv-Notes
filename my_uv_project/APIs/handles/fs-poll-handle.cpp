/* 
 * fs-poll-handles 也能允许用户监视指定路径下的变化。与 fs-event-handles 不同的地方在于：
 *   fs-poll-handles 使用 stat 来检测文件何时发生更改，以便它们可以在 fs-event-handles 无法处理的文件系统上工作。
 * uv_fs_poll_init() 初始化 fs poll handle
 * 
 * uv_fs_poll_start() 启动 fs poll handle
 * 
 * uv_fs_poll_stop() 停止 fs poll handle
 * 
 * uv_fs_poll_getpath() 获取 handle 监视的路径
 */
#include <stdio.h>
#include "uv.h"

void fs_poll_cb(uv_fs_poll_t *handle, int status, const uv_stat_t *prev, const uv_stat_t *curr) {
  /* 可以重命名某个文件来触发 */
  printf("fs poll occured ... \n");
  uv_fs_poll_stop(handle);
}

int main() {
  uv_fs_poll_t fs_poll;
  uv_fs_poll_init(uv_default_loop(), &fs_poll);
  const char* path = "/Users/gongzian/src/My-Libuv-Notes/my_uv_project";
  uv_fs_poll_start(&fs_poll, fs_poll_cb, path, 3000);
  printf("fs poll ...\n");
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  uv_loop_close(uv_default_loop());
  return 0;
}

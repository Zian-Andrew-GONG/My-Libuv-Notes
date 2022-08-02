/* 
 * fs-event-handles 能允许用户监视指定路径下的变化，例如某文件被重命名等。
 * 
 * uv_fs_event_init() 初始化 fs event handle
 * 
 * uv_fs_event_start() 启动 fs event handle
 * 
 * uv_fs_event_stop() 停止 fs event handle
 * 
 * uv_fs_event_getpath() 获取 handle 监视的路径
 */

#include <stdio.h>
#include "uv.h"

void fs_event_cb(uv_fs_event_t *handle, const char *filename, int events, int status) {
  /* 可以重命名某个文件来触发 */
  printf("fs event occured ... \n");
  uv_fs_event_stop(handle);
}

int main() {
  uv_fs_event_t fs_event;
  uv_fs_event_init(uv_default_loop(), &fs_event);
  const char* path = "/Users/gongzian/src/My-Libuv-Notes/my_uv_project";
  uv_fs_event_start(&fs_event, fs_event_cb, path, 0);

  printf("fs event ...\n");
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  uv_loop_close(uv_default_loop());
  return 0;
}

/* 
 * uv_tty_t 相当于 uv_stream_t 的子类
 * 
 * uv_tty_init() Initialize a new TTY stream with the given file descriptor. 
 *   Usually the file descriptor will be:
 *     0 = stdin
 *     1 = stdout
 *     2 = stderr
 * 
 * uv_tty_set_mode() Set the TTY using the specified terminal mode.
 * uv_tty_reset_mode() 退出程序时调用，把 TTY settings 恢复成默认值
 * 
 * uv_tty_get_winsize() Gets the current Window size. On success it returns 0. 
 */

#include <stdio.h>
#include "uv.h"

int main() {
  
  return 0;
}
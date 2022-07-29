/* 
 * uv_cancel() Cancel a pending request.
 *   目前只支持取消 uv_fs_t, uv_getaddrinfo_t, uv_getnameinfo_t, uv_random_t and uv_work_t
 * 
 * uv_req_size() 返回给定 request 类型的大小。
 * 
 * uv_req_get_data() return req->data
 * uv_req_set_data() set req->data
 * uv_req_get_type() return req->type
 * uv_req_type_name() return req type NAME
 */

#include <stdio.h>
#include "uv.h"

int main() {

  return 0;
}
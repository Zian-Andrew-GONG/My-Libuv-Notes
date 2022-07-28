# My-Libuv-Notes

## 代码结构：

- include：存放 .h 文件，这些文件主要用于对外暴露 c API

  - include/uv.h 文件存放平台无关的头文件，该文件需要被 include 依赖项目的源码当中。
  - include/uv/*.h 路径下的文件则是针对不同平台进行的不同相关类型的声明定义等。
include/uv.h 会根据不同的环境 include uv/win.h 或 uv/unix.h，uv/unix.h 再 include *nix 系的其他系统相关头文件。如同通常的 c 库一样，uv.h 不仅作为入口文件，同时还具备文档的作用，阅读源码自然适合从此文件开始。

include/tree.h 是个例外，该文件内通过 宏实现了 伸展树 和 红黑树，而 同样采用宏实现的 队列 存放在 src/queue.h 文件中

- src：存放 .c 文件，和一些 不对外暴露的 .h 文件

  - uv-common.h/uv-common.c 包含部分公共的内部数据结构、函数的声明和实现，会被 src 内部大部分其他文件 包含
  - timer.c 对应于 定时器 的实现
  - threadpool.c 实现了线程池，对应的线程管理实现存在于 src/[unix|win]/thread.c 文件中
  - queue.h 基于宏实现的简单的队列
  - heap-inl.h 最小二叉堆实现，未采用宏实现
  - fs-poll.c 文件系统轮询相关实现
  - idna.h/idna.c IDNA Punycode 相关实现代码
  - unix/ *nix 平台相关实现
  - win/ win 平台相关实现

- test：存放一些 单元测试 代码，这里面的很多代码可以作为参考示例

- samples：存放 示例代码，其中 samples/socks5-proxy 是一个基于 libuv 实现的 sock5 代理

## 命名风格：
libuv 所有函数、结构体都采用了统一的前缀 uv_，名称格式为：uv_ + name，name 可以以下划线开头，表示内部成员，例如：

- 公开名称：uv_loop_t = uv_ + loop_t uv_loop_start = uv_ + loop_start
- 内部名称：uv__io_t = uv_ + _io_t uv__io_poll = uv_ + _io_poll
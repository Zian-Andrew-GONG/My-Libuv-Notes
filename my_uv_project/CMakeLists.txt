cmake_minimum_required(VERSION 3.20)

project(my-libuv)

link_directories(/usr/local/lib)
include_directories(/usr/local/include)
include_directories(/usr/local/include/uv)


add_subdirectory(APIs)
add_subdirectory(filesystem)
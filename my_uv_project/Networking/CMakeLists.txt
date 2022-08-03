set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(tcp-echo-server tcp-echo-server.cpp)
target_link_libraries(tcp-echo-server uv)
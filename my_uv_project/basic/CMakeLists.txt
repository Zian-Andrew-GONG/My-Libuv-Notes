set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(hello-world  hello-world.cpp)
target_link_libraries(hello-world uv)

add_executable(default-loop default-loop.cpp)
target_link_libraries(default-loop uv)

add_executable(idle-basic idle-basic.cpp)
target_link_libraries(idle-basic uv)
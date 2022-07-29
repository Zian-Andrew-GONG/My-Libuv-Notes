set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_subdirectory(handles)
add_subdirectory(reqs)

add_executable(init-loop  init-loop.cpp)
target_link_libraries(init-loop uv)

add_executable(default-loop default-loop.cpp)
target_link_libraries(default-loop uv)

add_executable(idle-basic idle-basic.cpp)
target_link_libraries(idle-basic uv)
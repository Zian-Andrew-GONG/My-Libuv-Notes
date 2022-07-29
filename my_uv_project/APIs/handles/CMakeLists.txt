set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(base-handle base-handle.cpp)
target_link_libraries(base-handle uv)

add_executable(timer-handle timer-handle.cpp)
target_link_libraries(timer-handle uv)

add_executable(prepare-handle prepare-handle.cpp)
target_link_libraries(prepare-handle uv)
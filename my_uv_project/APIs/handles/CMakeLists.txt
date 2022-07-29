set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(base-handle base-handle.cpp)
target_link_libraries(base-handle uv)

add_executable(timer-handle timer-handle.cpp)
target_link_libraries(timer-handle uv)

add_executable(idle-prepare-check-handle idle-prepare-check-handle.cpp)
target_link_libraries(idle-prepare-check-handle uv)

add_executable(idle-handle idle-handle.cpp)
target_link_libraries(idle-handle uv)
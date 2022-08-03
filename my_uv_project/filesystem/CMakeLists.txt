set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(file-operation file-operation.cpp)
target_link_libraries(file-operation uv)

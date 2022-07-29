set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(init-loop  init-loop.cpp)
target_link_libraries(init-loop uv)

add_executable(default-loop default-loop.cpp)
target_link_libraries(default-loop uv)

add_executable(idle-basic idle-basic.cpp)
target_link_libraries(idle-basic uv)

add_executable(stop stop.cpp)
target_link_libraries(stop uv)

add_executable(base-handle base-handle.cpp)
target_link_libraries(base-handle uv)

add_executable(base-req base-req.cpp)
target_link_libraries(base-req uv)
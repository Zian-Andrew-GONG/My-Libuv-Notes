# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gongzian/src/My-Libuv-Notes/my_uv_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build

# Include any dependencies generated for this target.
include APIs/handles/CMakeFiles/prepare-handle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include APIs/handles/CMakeFiles/prepare-handle.dir/compiler_depend.make

# Include the progress variables for this target.
include APIs/handles/CMakeFiles/prepare-handle.dir/progress.make

# Include the compile flags for this target's objects.
include APIs/handles/CMakeFiles/prepare-handle.dir/flags.make

APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o: APIs/handles/CMakeFiles/prepare-handle.dir/flags.make
APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o: ../APIs/handles/prepare-handle.cpp
APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o: APIs/handles/CMakeFiles/prepare-handle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o -MF CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o.d -o CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o -c /Users/gongzian/src/My-Libuv-Notes/my_uv_project/APIs/handles/prepare-handle.cpp

APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/prepare-handle.dir/prepare-handle.cpp.i"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gongzian/src/My-Libuv-Notes/my_uv_project/APIs/handles/prepare-handle.cpp > CMakeFiles/prepare-handle.dir/prepare-handle.cpp.i

APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/prepare-handle.dir/prepare-handle.cpp.s"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gongzian/src/My-Libuv-Notes/my_uv_project/APIs/handles/prepare-handle.cpp -o CMakeFiles/prepare-handle.dir/prepare-handle.cpp.s

# Object files for target prepare-handle
prepare__handle_OBJECTS = \
"CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o"

# External object files for target prepare-handle
prepare__handle_EXTERNAL_OBJECTS =

bin/prepare-handle: APIs/handles/CMakeFiles/prepare-handle.dir/prepare-handle.cpp.o
bin/prepare-handle: APIs/handles/CMakeFiles/prepare-handle.dir/build.make
bin/prepare-handle: APIs/handles/CMakeFiles/prepare-handle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/prepare-handle"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prepare-handle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
APIs/handles/CMakeFiles/prepare-handle.dir/build: bin/prepare-handle
.PHONY : APIs/handles/CMakeFiles/prepare-handle.dir/build

APIs/handles/CMakeFiles/prepare-handle.dir/clean:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles && $(CMAKE_COMMAND) -P CMakeFiles/prepare-handle.dir/cmake_clean.cmake
.PHONY : APIs/handles/CMakeFiles/prepare-handle.dir/clean

APIs/handles/CMakeFiles/prepare-handle.dir/depend:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gongzian/src/My-Libuv-Notes/my_uv_project /Users/gongzian/src/My-Libuv-Notes/my_uv_project/APIs/handles /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/APIs/handles/CMakeFiles/prepare-handle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : APIs/handles/CMakeFiles/prepare-handle.dir/depend


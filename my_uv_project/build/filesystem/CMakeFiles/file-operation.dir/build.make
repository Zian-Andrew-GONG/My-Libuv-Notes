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
include filesystem/CMakeFiles/file-operation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include filesystem/CMakeFiles/file-operation.dir/compiler_depend.make

# Include the progress variables for this target.
include filesystem/CMakeFiles/file-operation.dir/progress.make

# Include the compile flags for this target's objects.
include filesystem/CMakeFiles/file-operation.dir/flags.make

filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o: filesystem/CMakeFiles/file-operation.dir/flags.make
filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o: ../filesystem/file-operation.cpp
filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o: filesystem/CMakeFiles/file-operation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o -MF CMakeFiles/file-operation.dir/file-operation.cpp.o.d -o CMakeFiles/file-operation.dir/file-operation.cpp.o -c /Users/gongzian/src/My-Libuv-Notes/my_uv_project/filesystem/file-operation.cpp

filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file-operation.dir/file-operation.cpp.i"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gongzian/src/My-Libuv-Notes/my_uv_project/filesystem/file-operation.cpp > CMakeFiles/file-operation.dir/file-operation.cpp.i

filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file-operation.dir/file-operation.cpp.s"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gongzian/src/My-Libuv-Notes/my_uv_project/filesystem/file-operation.cpp -o CMakeFiles/file-operation.dir/file-operation.cpp.s

# Object files for target file-operation
file__operation_OBJECTS = \
"CMakeFiles/file-operation.dir/file-operation.cpp.o"

# External object files for target file-operation
file__operation_EXTERNAL_OBJECTS =

bin/file-operation: filesystem/CMakeFiles/file-operation.dir/file-operation.cpp.o
bin/file-operation: filesystem/CMakeFiles/file-operation.dir/build.make
bin/file-operation: filesystem/CMakeFiles/file-operation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/file-operation"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/file-operation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
filesystem/CMakeFiles/file-operation.dir/build: bin/file-operation
.PHONY : filesystem/CMakeFiles/file-operation.dir/build

filesystem/CMakeFiles/file-operation.dir/clean:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem && $(CMAKE_COMMAND) -P CMakeFiles/file-operation.dir/cmake_clean.cmake
.PHONY : filesystem/CMakeFiles/file-operation.dir/clean

filesystem/CMakeFiles/file-operation.dir/depend:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gongzian/src/My-Libuv-Notes/my_uv_project /Users/gongzian/src/My-Libuv-Notes/my_uv_project/filesystem /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/filesystem/CMakeFiles/file-operation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : filesystem/CMakeFiles/file-operation.dir/depend

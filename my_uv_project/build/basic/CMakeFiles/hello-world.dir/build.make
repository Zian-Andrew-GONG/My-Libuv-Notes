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
include basic/CMakeFiles/hello-world.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include basic/CMakeFiles/hello-world.dir/compiler_depend.make

# Include the progress variables for this target.
include basic/CMakeFiles/hello-world.dir/progress.make

# Include the compile flags for this target's objects.
include basic/CMakeFiles/hello-world.dir/flags.make

basic/CMakeFiles/hello-world.dir/hello-world.cpp.o: basic/CMakeFiles/hello-world.dir/flags.make
basic/CMakeFiles/hello-world.dir/hello-world.cpp.o: ../basic/hello-world.cpp
basic/CMakeFiles/hello-world.dir/hello-world.cpp.o: basic/CMakeFiles/hello-world.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object basic/CMakeFiles/hello-world.dir/hello-world.cpp.o"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT basic/CMakeFiles/hello-world.dir/hello-world.cpp.o -MF CMakeFiles/hello-world.dir/hello-world.cpp.o.d -o CMakeFiles/hello-world.dir/hello-world.cpp.o -c /Users/gongzian/src/My-Libuv-Notes/my_uv_project/basic/hello-world.cpp

basic/CMakeFiles/hello-world.dir/hello-world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello-world.dir/hello-world.cpp.i"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gongzian/src/My-Libuv-Notes/my_uv_project/basic/hello-world.cpp > CMakeFiles/hello-world.dir/hello-world.cpp.i

basic/CMakeFiles/hello-world.dir/hello-world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello-world.dir/hello-world.cpp.s"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gongzian/src/My-Libuv-Notes/my_uv_project/basic/hello-world.cpp -o CMakeFiles/hello-world.dir/hello-world.cpp.s

# Object files for target hello-world
hello__world_OBJECTS = \
"CMakeFiles/hello-world.dir/hello-world.cpp.o"

# External object files for target hello-world
hello__world_EXTERNAL_OBJECTS =

bin/hello-world: basic/CMakeFiles/hello-world.dir/hello-world.cpp.o
bin/hello-world: basic/CMakeFiles/hello-world.dir/build.make
bin/hello-world: basic/CMakeFiles/hello-world.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/hello-world"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello-world.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
basic/CMakeFiles/hello-world.dir/build: bin/hello-world
.PHONY : basic/CMakeFiles/hello-world.dir/build

basic/CMakeFiles/hello-world.dir/clean:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic && $(CMAKE_COMMAND) -P CMakeFiles/hello-world.dir/cmake_clean.cmake
.PHONY : basic/CMakeFiles/hello-world.dir/clean

basic/CMakeFiles/hello-world.dir/depend:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gongzian/src/My-Libuv-Notes/my_uv_project /Users/gongzian/src/My-Libuv-Notes/my_uv_project/basic /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/basic/CMakeFiles/hello-world.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : basic/CMakeFiles/hello-world.dir/depend


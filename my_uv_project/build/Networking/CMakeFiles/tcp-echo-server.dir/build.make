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
include Networking/CMakeFiles/tcp-echo-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Networking/CMakeFiles/tcp-echo-server.dir/compiler_depend.make

# Include the progress variables for this target.
include Networking/CMakeFiles/tcp-echo-server.dir/progress.make

# Include the compile flags for this target's objects.
include Networking/CMakeFiles/tcp-echo-server.dir/flags.make

Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o: Networking/CMakeFiles/tcp-echo-server.dir/flags.make
Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o: ../Networking/tcp-echo-server.cpp
Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o: Networking/CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o -MF CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o -c /Users/gongzian/src/My-Libuv-Notes/my_uv_project/Networking/tcp-echo-server.cpp

Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.i"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gongzian/src/My-Libuv-Notes/my_uv_project/Networking/tcp-echo-server.cpp > CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.i

Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.s"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gongzian/src/My-Libuv-Notes/my_uv_project/Networking/tcp-echo-server.cpp -o CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.s

# Object files for target tcp-echo-server
tcp__echo__server_OBJECTS = \
"CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o"

# External object files for target tcp-echo-server
tcp__echo__server_EXTERNAL_OBJECTS =

bin/tcp-echo-server: Networking/CMakeFiles/tcp-echo-server.dir/tcp-echo-server.cpp.o
bin/tcp-echo-server: Networking/CMakeFiles/tcp-echo-server.dir/build.make
bin/tcp-echo-server: Networking/CMakeFiles/tcp-echo-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/tcp-echo-server"
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp-echo-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Networking/CMakeFiles/tcp-echo-server.dir/build: bin/tcp-echo-server
.PHONY : Networking/CMakeFiles/tcp-echo-server.dir/build

Networking/CMakeFiles/tcp-echo-server.dir/clean:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking && $(CMAKE_COMMAND) -P CMakeFiles/tcp-echo-server.dir/cmake_clean.cmake
.PHONY : Networking/CMakeFiles/tcp-echo-server.dir/clean

Networking/CMakeFiles/tcp-echo-server.dir/depend:
	cd /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gongzian/src/My-Libuv-Notes/my_uv_project /Users/gongzian/src/My-Libuv-Notes/my_uv_project/Networking /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking /Users/gongzian/src/My-Libuv-Notes/my_uv_project/build/Networking/CMakeFiles/tcp-echo-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Networking/CMakeFiles/tcp-echo-server.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake-3.15.7-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake-3.15.7-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mrstranger/dev/practise/CLionProjects/tp_deep_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tp_deep_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tp_deep_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp_deep_test.dir/flags.make

CMakeFiles/tp_deep_test.dir/main.cpp.o: CMakeFiles/tp_deep_test.dir/flags.make
CMakeFiles/tp_deep_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tp_deep_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_deep_test.dir/main.cpp.o -c /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/main.cpp

CMakeFiles/tp_deep_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_deep_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/main.cpp > CMakeFiles/tp_deep_test.dir/main.cpp.i

CMakeFiles/tp_deep_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_deep_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/main.cpp -o CMakeFiles/tp_deep_test.dir/main.cpp.s

# Object files for target tp_deep_test
tp_deep_test_OBJECTS = \
"CMakeFiles/tp_deep_test.dir/main.cpp.o"

# External object files for target tp_deep_test
tp_deep_test_EXTERNAL_OBJECTS =

tp_deep_test: CMakeFiles/tp_deep_test.dir/main.cpp.o
tp_deep_test: CMakeFiles/tp_deep_test.dir/build.make
tp_deep_test: CMakeFiles/tp_deep_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tp_deep_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp_deep_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp_deep_test.dir/build: tp_deep_test

.PHONY : CMakeFiles/tp_deep_test.dir/build

CMakeFiles/tp_deep_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp_deep_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp_deep_test.dir/clean

CMakeFiles/tp_deep_test.dir/depend:
	cd /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mrstranger/dev/practise/CLionProjects/tp_deep_test /home/mrstranger/dev/practise/CLionProjects/tp_deep_test /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug /home/mrstranger/dev/practise/CLionProjects/tp_deep_test/cmake-build-debug/CMakeFiles/tp_deep_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp_deep_test.dir/depend

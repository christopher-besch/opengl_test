# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chris/gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chris/gl/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test.dir/flags.make

test/CMakeFiles/test.dir/cmake_pch.hxx.gch: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/cmake_pch.hxx.gch: test/CMakeFiles/test.dir/cmake_pch.hxx.cxx
test/CMakeFiles/test.dir/cmake_pch.hxx.gch: test/CMakeFiles/test.dir/cmake_pch.hxx
test/CMakeFiles/test.dir/cmake_pch.hxx.gch: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chris/gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test.dir/cmake_pch.hxx.gch"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -MD -MT test/CMakeFiles/test.dir/cmake_pch.hxx.gch -MF CMakeFiles/test.dir/cmake_pch.hxx.gch.d -o CMakeFiles/test.dir/cmake_pch.hxx.gch -c /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx.cxx

test/CMakeFiles/test.dir/cmake_pch.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/cmake_pch.hxx.i"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -E /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx.cxx > CMakeFiles/test.dir/cmake_pch.hxx.i

test/CMakeFiles/test.dir/cmake_pch.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/cmake_pch.hxx.s"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -S /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx.cxx -o CMakeFiles/test.dir/cmake_pch.hxx.s

test/CMakeFiles/test.dir/src/main.cpp.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/src/main.cpp.o: ../test/src/main.cpp
test/CMakeFiles/test.dir/src/main.cpp.o: test/CMakeFiles/test.dir/cmake_pch.hxx
test/CMakeFiles/test.dir/src/main.cpp.o: test/CMakeFiles/test.dir/cmake_pch.hxx.gch
test/CMakeFiles/test.dir/src/main.cpp.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chris/gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/test.dir/src/main.cpp.o"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -MD -MT test/CMakeFiles/test.dir/src/main.cpp.o -MF CMakeFiles/test.dir/src/main.cpp.o.d -o CMakeFiles/test.dir/src/main.cpp.o -c /home/chris/gl/test/src/main.cpp

test/CMakeFiles/test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/main.cpp.i"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -E /home/chris/gl/test/src/main.cpp > CMakeFiles/test.dir/src/main.cpp.i

test/CMakeFiles/test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/main.cpp.s"
	cd /home/chris/gl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/chris/gl/build/test/CMakeFiles/test.dir/cmake_pch.hxx -S /home/chris/gl/test/src/main.cpp -o CMakeFiles/test.dir/src/main.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/main.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test/test: test/CMakeFiles/test.dir/cmake_pch.hxx.gch
test/test: test/CMakeFiles/test.dir/src/main.cpp.o
test/test: test/CMakeFiles/test.dir/build.make
test/test: test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chris/gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test"
	cd /home/chris/gl/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test.dir/build: test/test
.PHONY : test/CMakeFiles/test.dir/build

test/CMakeFiles/test.dir/clean:
	cd /home/chris/gl/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test.dir/clean

test/CMakeFiles/test.dir/depend:
	cd /home/chris/gl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chris/gl /home/chris/gl/test /home/chris/gl/build /home/chris/gl/build/test /home/chris/gl/build/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test.dir/depend


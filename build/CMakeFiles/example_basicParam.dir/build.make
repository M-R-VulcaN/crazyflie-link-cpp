# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/makeruser/crazyflie-link-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/makeruser/crazyflie-link-cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/example_basicParam.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example_basicParam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_basicParam.dir/flags.make

CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o: CMakeFiles/example_basicParam.dir/flags.make
CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o: ../examples/basicParam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/makeruser/crazyflie-link-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o -c /home/makeruser/crazyflie-link-cpp/examples/basicParam.cpp

CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/makeruser/crazyflie-link-cpp/examples/basicParam.cpp > CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.i

CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/makeruser/crazyflie-link-cpp/examples/basicParam.cpp -o CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.s

# Object files for target example_basicParam
example_basicParam_OBJECTS = \
"CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o"

# External object files for target example_basicParam
example_basicParam_EXTERNAL_OBJECTS =

example_basicParam: CMakeFiles/example_basicParam.dir/examples/basicParam.cpp.o
example_basicParam: CMakeFiles/example_basicParam.dir/build.make
example_basicParam: libcrazyflieLinkCpp.a
example_basicParam: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
example_basicParam: CMakeFiles/example_basicParam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/makeruser/crazyflie-link-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_basicParam"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_basicParam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_basicParam.dir/build: example_basicParam

.PHONY : CMakeFiles/example_basicParam.dir/build

CMakeFiles/example_basicParam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_basicParam.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_basicParam.dir/clean

CMakeFiles/example_basicParam.dir/depend:
	cd /home/makeruser/crazyflie-link-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/makeruser/crazyflie-link-cpp /home/makeruser/crazyflie-link-cpp /home/makeruser/crazyflie-link-cpp/build /home/makeruser/crazyflie-link-cpp/build /home/makeruser/crazyflie-link-cpp/build/CMakeFiles/example_basicParam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example_basicParam.dir/depend


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
include CMakeFiles/cflinkcpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cflinkcpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cflinkcpp.dir/flags.make

CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o: CMakeFiles/cflinkcpp.dir/flags.make
CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o: ../src/python_bindings.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/makeruser/crazyflie-link-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o -c /home/makeruser/crazyflie-link-cpp/src/python_bindings.cpp

CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/makeruser/crazyflie-link-cpp/src/python_bindings.cpp > CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.i

CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/makeruser/crazyflie-link-cpp/src/python_bindings.cpp -o CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.s

# Object files for target cflinkcpp
cflinkcpp_OBJECTS = \
"CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o"

# External object files for target cflinkcpp
cflinkcpp_EXTERNAL_OBJECTS =

cflinkcpp.cpython-36m-x86_64-linux-gnu.so: CMakeFiles/cflinkcpp.dir/src/python_bindings.cpp.o
cflinkcpp.cpython-36m-x86_64-linux-gnu.so: CMakeFiles/cflinkcpp.dir/build.make
cflinkcpp.cpython-36m-x86_64-linux-gnu.so: libcrazyflieLinkCpp.a
cflinkcpp.cpython-36m-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
cflinkcpp.cpython-36m-x86_64-linux-gnu.so: CMakeFiles/cflinkcpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/makeruser/crazyflie-link-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module cflinkcpp.cpython-36m-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cflinkcpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cflinkcpp.dir/build: cflinkcpp.cpython-36m-x86_64-linux-gnu.so

.PHONY : CMakeFiles/cflinkcpp.dir/build

CMakeFiles/cflinkcpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cflinkcpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cflinkcpp.dir/clean

CMakeFiles/cflinkcpp.dir/depend:
	cd /home/makeruser/crazyflie-link-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/makeruser/crazyflie-link-cpp /home/makeruser/crazyflie-link-cpp /home/makeruser/crazyflie-link-cpp/build /home/makeruser/crazyflie-link-cpp/build /home/makeruser/crazyflie-link-cpp/build/CMakeFiles/cflinkcpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cflinkcpp.dir/depend


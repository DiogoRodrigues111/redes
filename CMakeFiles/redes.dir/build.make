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
CMAKE_SOURCE_DIR = /home/diogorroessler/Softwares/redes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/diogorroessler/Softwares/redes

# Include any dependencies generated for this target.
include CMakeFiles/redes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/redes.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/redes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/redes.dir/flags.make

CMakeFiles/redes.dir/server.cpp.o: CMakeFiles/redes.dir/flags.make
CMakeFiles/redes.dir/server.cpp.o: server.cpp
CMakeFiles/redes.dir/server.cpp.o: CMakeFiles/redes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diogorroessler/Softwares/redes/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/redes.dir/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/redes.dir/server.cpp.o -MF CMakeFiles/redes.dir/server.cpp.o.d -o CMakeFiles/redes.dir/server.cpp.o -c /home/diogorroessler/Softwares/redes/server.cpp

CMakeFiles/redes.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/redes.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diogorroessler/Softwares/redes/server.cpp > CMakeFiles/redes.dir/server.cpp.i

CMakeFiles/redes.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/redes.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diogorroessler/Softwares/redes/server.cpp -o CMakeFiles/redes.dir/server.cpp.s

# Object files for target redes
redes_OBJECTS = \
"CMakeFiles/redes.dir/server.cpp.o"

# External object files for target redes
redes_EXTERNAL_OBJECTS =

redes: CMakeFiles/redes.dir/server.cpp.o
redes: CMakeFiles/redes.dir/build.make
redes: CMakeFiles/redes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/diogorroessler/Softwares/redes/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable redes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/redes.dir/build: redes
.PHONY : CMakeFiles/redes.dir/build

CMakeFiles/redes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/redes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/redes.dir/clean

CMakeFiles/redes.dir/depend:
	cd /home/diogorroessler/Softwares/redes && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/diogorroessler/Softwares/redes /home/diogorroessler/Softwares/redes /home/diogorroessler/Softwares/redes /home/diogorroessler/Softwares/redes /home/diogorroessler/Softwares/redes/CMakeFiles/redes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/redes.dir/depend

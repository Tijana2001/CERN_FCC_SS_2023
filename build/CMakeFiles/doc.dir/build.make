# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /cvmfs/sw.hsf.org/spackages7/cmake/3.25.2/x86_64-centos7-gcc11.2.0-opt/c4tzf/bin/cmake

# The command to remove a file.
RM = /cvmfs/sw.hsf.org/spackages7/cmake/3.25.2/x86_64-centos7-gcc11.2.0-opt/c4tzf/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build

# Utility rule file for doc.

# Include any custom commands dependencies for this target.
include CMakeFiles/doc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/doc.dir/progress.make

CMakeFiles/doc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating API documentation with Doxygen"
	/cvmfs/sw.hsf.org/spackages7/doxygen/1.9.6/x86_64-centos7-gcc11.2.0-opt/sqxsn/bin/doxygen /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/Doxyfile

doc: CMakeFiles/doc
doc: CMakeFiles/doc.dir/build.make
.PHONY : doc

# Rule to build all files generated by this target.
CMakeFiles/doc.dir/build: doc
.PHONY : CMakeFiles/doc.dir/build

CMakeFiles/doc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/doc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/doc.dir/clean

CMakeFiles/doc.dir/depend:
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles/doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/doc.dir/depend


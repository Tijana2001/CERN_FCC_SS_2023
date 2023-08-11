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

# Include any dependencies generated for this target.
include addons/FastJet/CMakeFiles/FastJet.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include addons/FastJet/CMakeFiles/FastJet.dir/compiler_depend.make

# Include the progress variables for this target.
include addons/FastJet/CMakeFiles/FastJet.dir/progress.make

# Include the compile flags for this target's objects.
include addons/FastJet/CMakeFiles/FastJet.dir/flags.make

addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/flags.make
addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o: /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ExternalRecombiner.cc
addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o -MF CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o.d -o CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o -c /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ExternalRecombiner.cc

addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.i"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ExternalRecombiner.cc > CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.i

addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.s"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ExternalRecombiner.cc -o CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.s

addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/flags.make
addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o: /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/JetClustering.cc
addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o -MF CMakeFiles/FastJet.dir/src/JetClustering.cc.o.d -o CMakeFiles/FastJet.dir/src/JetClustering.cc.o -c /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/JetClustering.cc

addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastJet.dir/src/JetClustering.cc.i"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/JetClustering.cc > CMakeFiles/FastJet.dir/src/JetClustering.cc.i

addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastJet.dir/src/JetClustering.cc.s"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/JetClustering.cc -o CMakeFiles/FastJet.dir/src/JetClustering.cc.s

addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/flags.make
addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o: /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ValenciaPlugin.cc
addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o: addons/FastJet/CMakeFiles/FastJet.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o -MF CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o.d -o CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o -c /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ValenciaPlugin.cc

addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.i"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ValenciaPlugin.cc > CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.i

addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.s"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && /cvmfs/sw.hsf.org/contrib/gcc/11.2.0/x86_64-centos7-gcc8.3.0-opt/d3epy/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet/src/ValenciaPlugin.cc -o CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.s

# Object files for target FastJet
FastJet_OBJECTS = \
"CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o" \
"CMakeFiles/FastJet.dir/src/JetClustering.cc.o" \
"CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o"

# External object files for target FastJet
FastJet_EXTERNAL_OBJECTS =

addons/FastJet/libFastJet.so: addons/FastJet/CMakeFiles/FastJet.dir/src/ExternalRecombiner.cc.o
addons/FastJet/libFastJet.so: addons/FastJet/CMakeFiles/FastJet.dir/src/JetClustering.cc.o
addons/FastJet/libFastJet.so: addons/FastJet/CMakeFiles/FastJet.dir/src/ValenciaPlugin.cc.o
addons/FastJet/libFastJet.so: addons/FastJet/CMakeFiles/FastJet.dir/build.make
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/fastjet/3.4.0/x86_64-centos7-gcc11.2.0-opt/r4z4v/lib/libfastjet.so
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/fastjet/3.4.0/x86_64-centos7-gcc11.2.0-opt/r4z4v/lib/libfastjetplugins.so
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libMathCore.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libImt.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libMultiProc.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libNet.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libRIO.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libThread.so.6.26.10
addons/FastJet/libFastJet.so: /cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root/libCore.so.6.26.10
addons/FastJet/libFastJet.so: addons/FastJet/CMakeFiles/FastJet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libFastJet.so"
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FastJet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
addons/FastJet/CMakeFiles/FastJet.dir/build: addons/FastJet/libFastJet.so
.PHONY : addons/FastJet/CMakeFiles/FastJet.dir/build

addons/FastJet/CMakeFiles/FastJet.dir/clean:
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet && $(CMAKE_COMMAND) -P CMakeFiles/FastJet.dir/cmake_clean.cmake
.PHONY : addons/FastJet/CMakeFiles/FastJet.dir/clean

addons/FastJet/CMakeFiles/FastJet.dir/depend:
	cd /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/FastJet /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet/CMakeFiles/FastJet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/FastJet/CMakeFiles/FastJet.dir/depend

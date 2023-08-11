# Install script for directory: /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so"
         RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/edm4hep/0.7.2/x86_64-centos7-gcc11.2.0-opt/nfdxp/lib64:/cvmfs/sw.hsf.org/spackages7/delphes/3.5.1pre05/x86_64-centos7-gcc11.2.0-opt/nuonr/lib:/cvmfs/sw.hsf.org/spackages7/dd4hep/1.23/x86_64-centos7-gcc11.2.0-opt/q4qtg/lib:/cvmfs/sw.hsf.org/spackages7/podio/0.16.2/x86_64-centos7-gcc11.2.0-opt/cbwgc/lib64:/cvmfs/sw.hsf.org/spackages7/fastjet/3.4.0/x86_64-centos7-gcc11.2.0-opt/r4z4v/lib:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/xieje/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/analyzers/dataframe/libFCCAnalyses.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so"
         OLD_RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/edm4hep/0.7.2/x86_64-centos7-gcc11.2.0-opt/nfdxp/lib64:/cvmfs/sw.hsf.org/spackages7/delphes/3.5.1pre05/x86_64-centos7-gcc11.2.0-opt/nuonr/lib:/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/FastJet:/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/ONNXRuntime:/cvmfs/sw.hsf.org/spackages7/dd4hep/1.23/x86_64-centos7-gcc11.2.0-opt/q4qtg/lib:/cvmfs/sw.hsf.org/spackages7/podio/0.16.2/x86_64-centos7-gcc11.2.0-opt/cbwgc/lib64:/cvmfs/sw.hsf.org/spackages7/fastjet/3.4.0/x86_64-centos7-gcc11.2.0-opt/r4z4v/lib:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/xieje/lib:"
         NEW_RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/edm4hep/0.7.2/x86_64-centos7-gcc11.2.0-opt/nfdxp/lib64:/cvmfs/sw.hsf.org/spackages7/delphes/3.5.1pre05/x86_64-centos7-gcc11.2.0-opt/nuonr/lib:/cvmfs/sw.hsf.org/spackages7/dd4hep/1.23/x86_64-centos7-gcc11.2.0-opt/q4qtg/lib:/cvmfs/sw.hsf.org/spackages7/podio/0.16.2/x86_64-centos7-gcc11.2.0-opt/cbwgc/lib64:/cvmfs/sw.hsf.org/spackages7/fastjet/3.4.0/x86_64-centos7-gcc11.2.0-opt/r4z4v/lib:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/xieje/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFCCAnalyses.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/FCCAnalyses" TYPE FILE FILES
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/Algorithms.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/CaloNtupleizer.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/JetClusteringUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/JetConstituentsUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/JetFlavourUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/JetTaggingUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/MCParticle.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/ReconstructedParticle.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/ReconstructedParticle2MC.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/ReconstructedParticle2Track.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/ReconstructedTrack.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/SmearObjects.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/Smearing.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/Utils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/VertexFinderLCFIPlus.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/VertexFitterSimple.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/VertexingUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/WeaverUtils.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/defines.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/dummyLoader.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/myFinalSel.h"
    "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/analyzers/dataframe/FCCAnalyses/myUtils.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/analyzers/dataframe/libFCCAnalyses.rootmap")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/analyzers/dataframe/libFCCAnalyses_rdict.pcm")
endif()


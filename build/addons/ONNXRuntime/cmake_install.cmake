# Install script for directory: /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/ONNXRuntime

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so"
         RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/ONNXRuntime/libONNXRuntime.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so"
         OLD_RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib:"
         NEW_RPATH "/cvmfs/sw.hsf.org/spackages7/root/6.26.10/x86_64-centos7-gcc11.2.0-opt/i4xdf/lib/root:/cvmfs/sw.hsf.org/spackages7/py-onnxruntime/1.10.0/x86_64-centos7-gcc11.2.0-opt/yhvnr/lib64:/cvmfs/sw.hsf.org/spackages7/vdt/0.4.3/x86_64-centos7-gcc11.2.0-opt/me3rs/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libONNXRuntime.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/install/python/addons/ONNXRuntime/jetFlavourHelper.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/install/python/addons/ONNXRuntime" TYPE FILE FILES "/afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/ONNXRuntime/python/jetFlavourHelper.py")
endif()


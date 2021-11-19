cmake_minimum_required (VERSION 3.6)

project(Automated-Neck-Identification)
set(CMAKE_PROJECT_NAME "Automated-Neck-Identification")

set(CMAKE_EXPORT_COMPILE_COMMANDS YES)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set_property(GLOBAL PROPERTY TARGET_MESSAGES OFF)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "DebugSan" CACHE STRING "Build mode ('DebugSan', 'Debug' or 'Release', default is 'DebugSan')" FORCE)
endif ()

if(CMAKE_BUILD_TYPE STREQUAL "DebugSan")
# Debug build with address and undefined behavior sanitizers enabled
  message(STATUS "Select Debug Build with Sanitizers")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -MP -fstack-protector-strong -g -fno-omit-frame-pointer -fsanitize=address,undefined")
  set(CMAKE_LINKER_FLAGS "${CMAKE_LINKER_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=address,undefined")
  # Required to communicate enabled sanitizers to PhASAR
  set(LLVM_USE_SANITIZER "Address,Undefined")
elseif(CMAKE_BUILD_TYPE STREQUAL "Debug")
# Standard debug build
  message(STATUS "Select Debug Build")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -MP -fstack-protector-strong -g")
else()
# Release build
  message(STATUS "Select Release Build")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -MP -fstack-protector-strong -march=native")
endif()

# Enable testing
enable_testing()

set(NECKID_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${NECKID_SRC_DIR}/cmake")

include("neckid_macros")

option(NECKID_BUILD_UNITTESTS "Build all tests (default is ON)" ON)

option(NECKID_BUILD_IR "Build IR test code (default is ON)" ON)

option(BUILD_SHARED_LIBS "Build shared libraries (default is ON)" ON)

option(NECKID_ENABLE_WARNINGS "Enable warnings" ON)
if (NECKID_ENABLE_WARNINGS)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-unused-variable -Wno-unused-parameter -Wno-return-type-c-linkage ")
endif (NECKID_ENABLE_WARNINGS)

option(NECKID_ENABLE_PIC "Build Position-Independed Code" ON)
if (NECKID_ENABLE_PIC)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
endif (NECKID_ENABLE_PIC)

include_directories(${CMAKE_CURRENT_BINARY_DIR})

include_directories(
  ${NECKID_SRC_DIR}/include
)

set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

if (LLVM_ENABLE_LIBCXX)
  set(NECKID_STD_FILESYSTEM c++fs)
else()
  set(NECKID_STD_FILESYSTEM stdc++fs)
endif()

### Adding external libraries
# Threads
find_package(Threads)

# Boost
find_package(Boost 1.65.1 COMPONENTS filesystem graph system program_options log ${BOOST_THREAD} REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

# Disable clang-tidy for the external projects
set(CMAKE_CXX_CLANG_TIDY "")

# PhASAR
add_subdirectory(external/phasar)
# find_package(phasar COMPONENTS db REQUIRED)
include_directories(external/phasar/include/)
# include_directories(${PHASAR_INCLUDE_DIR})
link_directories(${PHASAR_LIBRARY_DIR})

# Googletest
# Set up Googletest only if it is not already available through PhASAR
if (NOT TARGET gtest OR NOT TARGET gmock)
  add_subdirectory(external/googletest)
endif()
include_directories(external/googletest/googletest/include)
include_directories(external/googletest/googlemock/include)

# LLVM
find_package(LLVM 12 REQUIRED CONFIG)
set(USE_LLVM_FAT_LIB ON)
# include_directories(${LLVM_INCLUDE_DIRS})
# link_directories(${LLVM_LIB_PATH} ${LLVM_LIBRARY_DIRS})
# message(FATAL_ERROR "${LLVM_LIBRARY_DIRS}")
# add_definitions(${LLVM_DEFINITIONS})
# set(LLVM_LINK_COMPONENTS
#   coverage
#   coroutines
#   demangle
#   libdriver
#   lto
#   support
#   analysis
#   bitwriter
#   core
#   ipo
#   irreader
#   instcombine
#   instrumentation
#   linker
#   objcarcopts
#   scalaropts
#   transformutils
#   codegen
#   vectorize
# )
# llvm_map_components_to_libnames(llvm_libs
#   ${LLVM_LINK_COMPONENTS}
# )

# find_library(LLVM_LIBRARY NAMES LLVM PATHS ${LLVM_LIBRARY_DIRS} NO_DEFAULT_PATH)
# if(NOT ${LLVM_LIBRARY} STREQUAL "LLVM_LIBRARY-NOTFOUND")
#   message(STATUS "Found consolidated shared LLVM lib " ${LLVM_LIBRARY} " that will be linked against.")
#   set(USE_LLVM_FAT_LIB ON)
# endif()

# Set up clang-tidy to be applied during compilation to indicate code smells
set(CMAKE_CXX_CLANG_TIDY
  clang-tidy;
  -header-filter=NeckID.*;
  # -warnings-as-errors=*;
)

# Add the Neck-ID subdirectories
add_subdirectory(config)
add_subdirectory(include)
add_subdirectory(lib)
add_subdirectory(tools)

if (NECKID_BUILD_UNITTESTS)
  message("NeckID Unittests")
  add_subdirectory(unittests)
  set(NECKID_BUILD_IR ON)
endif()  

if (NECKID_BUILD_IR)
  message("Building IR Test Code")
  add_subdirectory(test)
endif()

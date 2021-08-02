function(add_neckid_unittest test_name)
  message("Set-up unittest: ${test_name}")
  get_filename_component(test ${test_name} NAME_WE)
  add_executable(${test}
    ${test_name}
  )
  add_dependencies(NeckIDUnitTests ${test})

  if(USE_LLVM_FAT_LIB)
    llvm_config(${test} USE_SHARED ${LLVM_LINK_COMPONENTS})
  else()
    llvm_config(${test} ${LLVM_LINK_COMPONENTS})
  endif()

  target_link_libraries(${test}
    LINK_PUBLIC
    neckid_config
    neckid_neckid
    ${Boost_LIBRARIES}
    ${CMAKE_THREAD_LIBS_INIT}
    gtest
  )

  add_test(NAME "${test}"
    COMMAND ${test} ${CATCH_TEST_FILTER}
    WORKING_DIRECTORY ${NECKID_UNITTEST_DIR}
  )
  set_tests_properties("${test}" PROPERTIES LABELS "all")
  set(CTEST_OUTPUT_ON_FAILURE ON)
endfunction()

function(generate_ll_file)
  set(options MEM2REG DEBUG)
  set(testfile FILE)
  cmake_parse_arguments(GEN_LL "${options}" "${testfile}" "" ${ARGN} )
  # get file extension
  get_filename_component(test_code_file_ext ${GEN_LL_FILE} EXT)
  string(REPLACE "." "_" ll_file_suffix ${test_code_file_ext})
  # define .ll file name
#  set(ll_file_suffix "_${test_code_file_ext}")
  if(GEN_LL_MEM2REG)
    set(ll_file_suffix "${ll_file_suffix}_m2r")
  endif()
  if(GEN_LL_DEBUG)
    set(ll_file_suffix "${ll_file_suffix}_dbg")
  endif()
#  set(ll_file_suffix "${ll_file_suffix}.ll")
  string(REPLACE ${test_code_file_ext}
    "${ll_file_suffix}.ll" test_code_ll_file
    ${GEN_LL_FILE}
  )
  # get file path
  set(test_code_file_path "${CMAKE_CURRENT_SOURCE_DIR}/${GEN_LL_FILE}")

  # define custom target name
  # target name = parentdir + test code file name + mem2reg + debug
  get_filename_component(parent_dir ${CMAKE_CURRENT_SOURCE_DIR} NAME)
  get_filename_component(test_code_file_name ${GEN_LL_FILE} NAME_WE)
  set(test_code_file_target "${parent_dir}_${test_code_file_name}${ll_file_suffix}")

  # define compilation flags
  set(GEN_CXX_FLAGS -std=c++14 -fno-discard-value-names -emit-llvm -S)
  set(GEN_C_FLAGS -fno-discard-value-names -emit-llvm -S)
  set(GEN_CMD_COMMENT "[LL]")
  if(GEN_LL_MEM2REG)
    list(APPEND GEN_CXX_FLAGS -Xclang -disable-O0-optnone)
    list(APPEND GEN_C_FLAGS -Xclang -disable-O0-optnone)
    set(GEN_CMD_COMMENT "${GEN_CMD_COMMENT}[M2R]")
  endif()
  if(GEN_LL_DEBUG)
    list(APPEND GEN_CXX_FLAGS -g)
    list(APPEND GEN_C_FLAGS -g)
    set(GEN_CMD_COMMENT "${GEN_CMD_COMMENT}[DBG]")
  endif()
  set(GEN_CMD_COMMENT "${GEN_CMD_COMMENT} ${GEN_LL_FILE}")

  # define .ll file generation command
  if(${test_code_file_ext} STREQUAL ".cpp")
    set(GEN_CMD ${CMAKE_CXX_COMPILER_LAUNCHER} ${CMAKE_CXX_COMPILER})
    list(APPEND GEN_CMD ${GEN_CXX_FLAGS})
  else()
    set(GEN_CMD ${CMAKE_C_COMPILER_LAUNCHER} ${CMAKE_C_COMPILER})
    list(APPEND GEN_CMD ${GEN_C_FLAGS})
  endif()
  if(GEN_LL_MEM2REG)
    add_custom_command(
      OUTPUT ${test_code_ll_file}
      COMMAND ${GEN_CMD} ${test_code_file_path} -o ${test_code_ll_file}
      COMMAND ${CMAKE_CXX_COMPILER_LAUNCHER} opt -mem2reg -S ${test_code_ll_file} -o ${test_code_ll_file}
      COMMENT ${GEN_CMD_COMMENT}
      DEPENDS ${GEN_LL_FILE}
      VERBATIM
    )
  else()
    add_custom_command(
    OUTPUT ${test_code_ll_file}
    COMMAND ${GEN_CMD} ${test_code_file_path} -o ${test_code_ll_file}
    COMMENT ${GEN_CMD_COMMENT}
    DEPENDS ${GEN_LL_FILE}
    VERBATIM
    )
  endif()
  add_custom_target(${test_code_file_target}
    DEPENDS ${test_code_ll_file}
  )
  add_dependencies(LLFileGeneration ${test_code_file_target})
endfunction()

macro(subdirlist result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      list(APPEND dirlist ${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro(subdirlist)

add_custom_target(NeckIDUnitTests)
set_target_properties(NeckIDUnitTests PROPERTIES FOLDER "Unittests")
add_dependencies(NeckIDUnitTests LLFileGeneration)

set(NECKID_UNITTEST_DIR ${CMAKE_CURRENT_BINARY_DIR})

add_custom_target(check-ase-unittests
  COMMAND ${CMAKE_CTEST_COMMAND} --progress --output-on-failure -j 8
  WORKING_DIRECTORY ${NECKID_UNITTEST_DIR}
  DEPENDS NeckIDUnitTests
)

# Provide config files for unit tests
file(MAKE_DIRECTORY ${NECKID_UNITTEST_DIR}/config/)
set(PHASAR_CONFIG_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../config/")
function(test_require_config_file file_name)
  configure_file("${PHASAR_CONFIG_DIR}${file_name}"
    "${NECKID_UNITTEST_DIR}/config/."
    COPYONLY
  )
endfunction()

configure_file(TestUtils/config.h.in TestUtils/config.h @ONLY)

include_directories(TestUtils)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/TestUtils)

add_subdirectory(NeckBenchmark)
add_subdirectory(NeckCoreutilsBenchmark)
add_subdirectory(NeckDataset2Benchmark)
add_subdirectory(NeckID)

set(BASICS
  example_01.cpp
)

foreach(TEST_SRC ${BASICS})
  get_filename_component(TEST_SRC_FILE ${TEST_SRC} NAME)
  generate_ll_file(FILE ${TEST_SRC_FILE} DEBUG)
endforeach(TEST_SRC)

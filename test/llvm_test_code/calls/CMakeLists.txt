set(BASICS
  call_01.cpp
  call_02.cpp
  call_03.cpp
  call_04.cpp
  call_05.cpp
)

foreach(TEST_SRC ${BASICS})
  get_filename_component(TEST_SRC_FILE ${TEST_SRC} NAME)
  generate_ll_file(FILE ${TEST_SRC_FILE} DEBUG)
endforeach(TEST_SRC)

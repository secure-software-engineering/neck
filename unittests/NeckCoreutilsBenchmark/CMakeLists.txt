set(NeckCoreutilsBenchmarkTestSources
  NeckCoreutilsBenchmarkTest.cpp
)

foreach(TEST_SRC ${NeckCoreutilsBenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

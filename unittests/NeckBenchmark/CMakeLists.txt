set(NeckBenchmarkTestSources
  NeckBenchmarkTest.cpp
)

foreach(TEST_SRC ${NeckBenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

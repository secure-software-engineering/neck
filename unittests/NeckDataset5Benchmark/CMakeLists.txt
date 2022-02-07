set(NeckDataset5BenchmarkTestSources
  NeckDataset5BenchmarkTest.cpp
)

foreach(TEST_SRC ${NeckDataset5BenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

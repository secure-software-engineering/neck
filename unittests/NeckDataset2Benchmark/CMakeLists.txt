set(NeckDataset2BenchmarkTestSources
  NeckDataset2BenchmarkTest.cpp
)

foreach(TEST_SRC ${NeckDataset2BenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

set(SlashDatasetBenchmarkTestSources
  SlashDatasetBenchmarkTest.cpp
)

foreach(TEST_SRC ${SlashDatasetBenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

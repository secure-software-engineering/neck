set(NeckCustomScenariosBenchmarkTestSources
  NeckCustomScenariosBenchmarkTest.cpp
)

foreach(TEST_SRC ${NeckCustomScenariosBenchmarkTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

set(NeckIDTestSources
  NeckIDTest.cpp
)

foreach(TEST_SRC ${NeckIDTestSources})
  add_neckid_unittest(${TEST_SRC})
endforeach(TEST_SRC)

#ifndef UNITTESTS_TESTUTILS_TESTCONFIG_H
#define UNITTESTS_TESTUTILS_TESTCONFIG_H

#include <string>

#include "NeckID/Config/Configuration.h"

namespace neckid::unittest {

inline const std::string PathToLLTestFiles(NeckIDConfig::neckidDirectory() +
                                           "build/test/llvm_test_code/");

} // namespace neckid::unittest

#endif // UNITTESTS_TESTUTILS_TESTCONFIG_H

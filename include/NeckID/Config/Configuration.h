#ifndef NECKID_CONFIG_CONFIGURATION_H
#define NECKID_CONFIG_CONFIGURATION_H

#include <string>

#include "NeckID/Config/Version.h"

#define XSTR(S) STR(S)
#define STR(S) #S

namespace neckid {

class NeckIDConfig {
public:
  /// Specifies SAE's version
  static inline std::string version() { return XSTR(SAE_VERSION); }
  /// SAE's directory
  static inline std::string neckidDirectory() { return NeckIDDirectory; }

private:
  /// Specifies the directory in which SAE is located.
  static const std::string NeckIDDirectory;
};

} // namespace neckid

#endif

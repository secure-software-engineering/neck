#include <filesystem>
#include <string>

#include "NeckID/Config/Configuration.h"

namespace neckid {

const std::string NeckIDConfig::NeckIDDirectory = []() {
  std::string CurrPath = std::filesystem::current_path().string();
  size_t Idx = CurrPath.rfind("build", CurrPath.length());
  return CurrPath.substr(0, Idx);
}();

} // namespace neckid

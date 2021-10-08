#include "../neck-annotation.h"

#include <iostream>

int main(int Argc, char **Argv) {
  if (Argc <= 1) {
    std::cout << "too few parameters!\n";
    return 1;
  }
  const char *ProgName = Argv[1]; // NOLINT
    _neck_identification_mark_as_neck_();
  std::cout << ProgName << '\n';
  return 0;
}

#include <stdio.h>

void function3() { printf("In function3\n"); }

void function2() {
  printf("In function2\n");
  function3();
}

void function1() {
  printf("In function1\n");
  function2();
}

int main(int argc, char *argv[]) {
  printf("Program started with %d arguments\n", argc - 1);

  if (argc > 1) {
    for (int i = 1; i < argc; i++) {
      printf("Argument %d: %s\n", i, argv[i]);
    }
  } else {
    printf("No command line arguments provided.\n");
  }

  function1();
  return 0;
}

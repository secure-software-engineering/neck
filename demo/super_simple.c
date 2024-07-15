#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
  int count_chars = 0;
  int total_chars = 0;

  if (argc > 1)
    count_chars = 1;

  if (count_chars) {
    total_chars = 10;
    printf("Total chars = %d\n", total_chars);
  }

  char buffer[1024];
  if (buffer) {
    printf("dump\n");
  }
  return 0;
}

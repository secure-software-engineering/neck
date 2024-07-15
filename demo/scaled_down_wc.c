#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
  int count_chars = 0, count_lines = 0;
  int total_chars = 0, total_lines = 0;

  for (int i = 1; i < argc; i++) {
    if (argv[i][0] == '-') { // Check for `-`
      switch (argv[i][1]) {
      case 'c':
        count_chars = 1;
        break;
      case 'l':
        count_lines = 1;
        break;
      default:
        printf("wrong flag %s\n", argv[i]);
        exit(0);
      }
    } else {
      printf("Provide correct args");
    }
  }

  char buffer[1024];
  while (fgets(buffer, 1024, stdin)) {
    if (count_chars)
      total_chars += strlen(buffer); // Use strlen
    if (count_lines)
      total_lines++; // Add semicolon
  }

  if (count_chars)
    printf("Total chars = %d\n", total_chars);
  if (count_lines)
    printf("Total lines = %d\n", total_lines);

  if (buffer) {
    printf("dump\n");
  }
  return 0;
}

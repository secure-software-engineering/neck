#include "../neck-annotation.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void doSomething(int flag) {
  for (int index = flag; index > 0; index--)
    printf("Non-option argument\n");

  // not here
  // klee_dump_memory();
}

int main(int argc, char **argv) {
  int aflag = 0;
  int bflag = 0;
  char *cvalue = NULL;
  int index;
  int c;

  opterr = 0;

  while ((c = getopt(argc, argv, "abc:")) != -1)
    switch (c) {
    case 'a':
      aflag = argc;
      doSomething(aflag);
      break;
    case 'b':
      bflag = 1;
      break;
    case 'c':
      cvalue = optarg;
      break;
    case '?':
      if (optopt == 'c')
        fprintf(stderr, "Option -%c requires an argument.\n", optopt);
      else if (isprint(optopt))
        fprintf(stderr, "Unknown option `-%c'.\n", optopt);
      else
        fprintf(stderr, "Unknown option character `\\x%x'.\n", optopt);
      return 1;
    default:
      abort();
    }
  
  // should be here
  klee_dump_memory();

  printf("aflag = %d, bflag = %d, cvalue = %s\n", aflag, bflag, cvalue);

  if (argc < optind + 1) {
    return -1;
  }

  return 0;
}

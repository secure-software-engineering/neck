int foo(int);

int foo(int I) { return I; }

int main() {
  int X = 42;
  int Y = 13;
  int Z = foo(X);
  X = foo(Z) + 99;
  return 0;
}

int foo(int);
int bar(int, int);

int foo(int I) {
  I += 1001;
  I = bar(I, 1001);
  return I;
}

int bar(int I, int J) {
  int R = 0;
  for (int X = I; X < J; ++X) {
    R += X;
  }
  return R;
}

int main() {
  int X = 42;
  int Y = 13;
  int Z = foo(X);
  X = foo(Z) + 99;
  return 0;
}

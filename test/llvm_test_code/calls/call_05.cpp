int foo(int);
int bar(int, int);
int factorial(int);
int baz(int);

int foo(int I) { return I; }

int bar(int I, int J) {
  int R = 0;
  for (int X = I; X < J; ++X) {
    R += X;
  }
  return baz(R);
}

int baz(int I) { return foo(I); }

int factorial(int N) {
  if (N <= 1) {
    return 1;
  }
  return N * factorial(N - 1);
}

int main() {
  int X = 42;
  int Y = bar(X, 9001);
  int Z = factorial(Y);
  return 0;
}

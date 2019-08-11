#define N 10
void foo(double a[N][N], double b[N][N], double c[N][N]) {
  for (int i=0; i<N; i++) {
    for (int j=0; j<N; j++) {
      for (int k=0; k<N; k++) {
        c[i][j] += a[i][k] * b[k][j];
      }
    }
  }
}

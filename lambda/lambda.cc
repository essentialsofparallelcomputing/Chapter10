int main() {
    const int N = 100;
    double a[N], b[N], c[N];
    double scalar = 0.5;

    // c, a, and b are all valid scope pointers on the device or host

    // We assign the loop body to the example_lambda variable
    auto example_lambda = [&] (int i) {
        c[i] = a[i] + scalar * b[i];
    };

    for (int i = 0; i < N; i++)
    {
        example_lambda(i);
    }
}

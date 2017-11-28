void test_omp(const int a[3])
{
    // Const array `b` is predetermined omp shared, by gcc-4.8
    const int b[3] =
    {
        a[0] * 2, // 2
        a[1] * 2, // 4
        a[2] * 2  // 6
    };
    int c[3];     // After loop: c = { 6, 12, 18 }
	
# pragma omp parallel for schedule(static) default(none) shared(a,b,c)
    for (int i=0; i<3; i++) {
        c[i] = b[i] * 3;
    }
}

int main()
{
    const int a[3] = { 1, 2, 3 };
    test_omp(a);
}

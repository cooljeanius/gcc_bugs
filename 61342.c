int main()
{
    int x = 2;
    int y = 2;
    double f_[2][2];
    double (*f)[x][y] = (double (*)[x][y])f_;
#pragma omp parallel
#pragma omp master
    {
        for (int i = 0; i < x; i++)
            for (int j = 0; j < y; j++)
#pragma omp task default(none) shared(f) firstprivate(i, j)
            {
                (*f)[i][j] = 1;
            }
    }
}

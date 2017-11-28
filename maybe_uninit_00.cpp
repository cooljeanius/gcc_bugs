extern int b;

inline void subfoo(int i, float *nx, float *ny)
{
    *nx = i;
    *ny = i;
}

float foo() {
    int a = b;
    if (a < 4)
        a = 4;
    float vx, vy;
	
    for (int i=1; i<a; ++i) {
        subfoo(i, &vx, &vy);
    }
	
    return vx + vy;
}

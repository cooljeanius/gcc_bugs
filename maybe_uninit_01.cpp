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

extern bool error();
extern void subfoo2(unsigned a);

void foo2() {
    unsigned a;
    int _b = b;
    if (_b) {
        a = 1;
    } else {
        if (error()) {
            // lala
        } else {
            a = 2;
            _b = 5;
        }
    }
    
    if (_b) {
        subfoo2(a);
    }
}

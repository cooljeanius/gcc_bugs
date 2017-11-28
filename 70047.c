void f(long a1, long a2, long a3, long a4, long a5, long a6, long a7);
void g(float b1, double b2, long double b3, long b4, long b5, long b6,
	   register long b7);

struct agg {
	long f1;
	float f2;
	double f3;
	long double f4;
};

void h(struct agg c1, struct agg c2, struct agg c3, struct agg c4,
	   struct agg c5, struct agg c6, struct agg c7, struct agg c8);

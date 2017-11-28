float * __restrict__ x;
float * __restrict__ y;
float * __restrict__ z;

float v1[4],v2[4],v3[4];

struct A {
	float a[4];
}; //  __attribute__ ((aligned(16)));

A a1, a2, a3;

void foo ()
{
	
	float * __restrict__ pin = &x[0];
	float * __restrict__ pout =&y[0];
	
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
}

void voo() {
	
	float * __restrict__ pin = &v1[0];
	float * __restrict__ pout =&v2[0];
	
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
	
	
}

void aoo() {
	
	float * __restrict__ pin = &a1.a[0];
	float * __restrict__ pout =&a2.a[0];
	
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
	*pout++ = *pin++;
	
	
}


void loop() {
	for (int i=0;i!=4;++i) x[i]=y[i]+z[i];
}

void voop() {
	for (int i=0;i!=4;++i) v1[i]=v2[i]+v3[i];
}

void aoop() {
	for (int i=0;i!=4;++i) a1.a[i]=a2.a[i]+a3.a[i];
}

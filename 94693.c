#include <stddef.h>
#include <stdlib.h>

struct outs { int kind; int i; };

void foo0(struct outs *out)
{
	if (out->kind == 0)
		;
	else
		out->i = out->kind;
}

int main()
{
	struct outs out;
	out.kind = 3;
	foo0(&out);
	// 'out' is unused [after the call]
}


int foo1(void **ret)
{
	*ret = NULL;
	return 0;
}

int bar0()
{
	void *dummy;
	return bar0(&dummy);
}


int main1()
{
	void *dummy;
	if (!foo1(&dummy))
		return 0;
	abort();
}

struct A { int key; double payload_A; };
struct B { int key; int payload_B; };

void foo2(int *key)
{
	switch (*key)
	{
		case 1:
			((struct A *)key)->payload_A = 1.0;
			break;
		case 2:
			((struct B *)key)->payload_B = 1;
			break;
		default:;
	}
}

void bar1()
{
	struct A s;
	s.key = 1;
	foo2(&s);
}
void baz()
{
	struct B s;
	s.key = 2;
	foo2(&s);
}

typedef enum {
	NAUGHT,
	ONE,
	TWO,
} foo_t;

int
test(foo_t arg)
{
	switch (arg) {
	  case NAUGHT:
	  case ONE:
		  switch (arg) {
			case NAUGHT:
				return 0;
			case ONE:
				return 1;
		  }
		  break;
	  case TWO:
		  return 2;
	}
	return -1;
}

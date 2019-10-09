/* 91812.c */

volatile unsigned int register1;
volatile unsigned int register2;

void busy_wait_for_register(int x) {
	volatile unsigned int *volatile ptr;
	switch (x) {
		case 0x1111:
			ptr = &register1;
			break;
			
		case 0x2222:
			ptr = &register2;
			break;
			
		default:
			return;
	}
	while (*ptr) { /* (do nothing) */; };
}

/* EOF */

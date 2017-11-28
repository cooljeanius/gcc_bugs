int main(void) {
	asm volatile ("nop");                      // accepted
	asm const ("nop");                         // accepted with warning
	asm __restrict ("nop");                    // accepted with warning
	asm const volatile ("nop");                // parse error
	asm const __restrict ("nop");              // parse error
	asm volatile goto ("nop" : : : : label);   // accepted
	asm goto volatile ("nop" : : : : label);   // parse error
label:
	return 0;
}

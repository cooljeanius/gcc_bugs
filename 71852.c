int main(int argc, char**argv)
{
	unsigned int aa = argc;
	
	aa = aa & 0x04;
	
	if (aa == 0x00) {
		// Ok.
	} else if (aa == 0x01) {
		// Ok.
	} else if (aa == 0x0b) {
		// Oops.
	}
}

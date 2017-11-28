#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>
#include <fcntl.h>
#include <unistd.h>

extern void somefunc(int x);
extern void someotherfunc(int x);

void
testsetjmp(int a1)
{
	jmp_buf jbuf;
	int fd;
	int a2;
	
	if (a1 > 0)
		a2 = 42;
	else
		a2 = 43;
	
	fd = open("mytmpfile", O_CREAT | O_RDWR | O_TRUNC, S_IRUSR | S_IWUSR);
	if (fd < 0)
	{
		perror("mytmpfile");
		exit(1);
	}
	
	if (setjmp(jbuf) == 0)
	{
		somefunc(a2);
		close(fd);
		fd = -1;
		someotherfunc(a2);
	}
	else
	{
		/* we get here on longjmp out of somefunc or someotherfunc */
		if (fd >= 0)
			close(fd);
	}
}

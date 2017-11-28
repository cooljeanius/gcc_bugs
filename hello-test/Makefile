CC=/usr/local/bin/gcc
LD_LIBRARY_PATH=.

hello-run :  hello-exec hello-exec-gccbug35179
	./hello-exec
	gdb -x gdb.run ./hello-exec-gccbug35179

hello-exec : hellomain.o libhello.so
	${CC} -g -o hello-exec hellomain.o -L. -lhello  

hello-exec-gccbug35179 : hellomain.o libhello.so
	echo Linking with both -static and -shared flags exposes the bug.
	${CC} -g -static -o $@ hellomain.o -shared -L. -lhello -v 

hellomain.o : hellomain.c
	${CC} -o hellomain.o -c -g hellomain.c 

libhello.so : hello_.o
	${CC} -o libhello.so -shared -g hello_.o 

hello_.o : hello.c
	${CC} -o hello_.o -g -c -fpic -DPIC hello.c 

clean:
	rm hello_.o libhello.so hellomain.o hello-exec hello-exec-gccbug35179



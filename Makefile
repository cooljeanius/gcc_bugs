clean:
	rm -fv *.o *~ a.out *.exe
	rm -rfv *.dSYM
	file ./* | grep empty | cut -d: -f1 | xargs rm -fv

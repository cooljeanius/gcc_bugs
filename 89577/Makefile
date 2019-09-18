FLAGS := -g -Wall -Werror -Wswitch-enum # -Wl,--as-needed
FLAGS_NATIVE = $(FLAGS) -march=native
SHELL = /opt/local/bin/bash

all:
	rm -f a?-?.?
	g++-mp-7 -O0 $(FLAGS) -o a0-7.4 a.cc
	g++-mp-7 -Og $(FLAGS) -o ag-7.4 a.cc
	g++-mp-7 -O1 $(FLAGS) -o a1-7.4 a.cc
	g++-mp-8 -O0 $(FLAGS) -o a0-8.3 a.cc
	g++-mp-8 -Og $(FLAGS) -o ag-8.3 a.cc
	g++-mp-8 -O1 $(FLAGS) -o a1-8.3 a.cc
	g++-mp-8 -O3 $(FLAGS) -o a3-8.3 a.cc
	g++-mp-7 -Og $(FLAGS_NATIVE) -o ag-7.4n a.cc
	g++-mp-8 -Og $(FLAGS_NATIVE) -o ag-8.3n a.cc
	@echo ""
	/usr/bin/time ./a0-7.4 |& egrep -o [0-9]+.*user
	/usr/bin/time ./ag-7.4 |& egrep -o [0-9]+.*user
	/usr/bin/time ./a1-7.4 |& egrep -o [0-9]+.*user
	@echo ""
	/usr/bin/time ./a0-8.3 |& egrep -o [0-9]+.*user
	/usr/bin/time ./ag-8.3 |& egrep -o [0-9]+.*user
	/usr/bin/time ./a1-8.3 |& egrep -o [0-9]+.*user
	/usr/bin/time ./a3-8.3 |& egrep -o [0-9]+.*user
	@echo ""
	/usr/bin/time ./ag-7.4n |& egrep -o [0-9]+.*user
	/usr/bin/time ./ag-8.3n |& egrep -o [0-9]+.*user

clean:
	rm -f a?-?.?
	rm -f a?-?.?n
	rm -rfv *.dSYM

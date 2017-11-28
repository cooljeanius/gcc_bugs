
DIR.gcc4_8n=/home/evansl/download/gcc/4.8-20120923/install
COMPILER.gcc4_8n=$(DIR.gcc4_8n)/bin/g++
COMPILE.gcc4_8n=$(COMPILER.gcc4_8n) -c -std=gnu++11
DIR.clangxx=/home/evansl/download/llvm/svn/build/Release+Asserts
COMPILER.clangxx=$(DIR.clangxx)/bin/clang
COMPILE.clangxx=$(COMPILER.clangxx) -c -std=c++11 -cxx-isystem /home/evansl/download/llvm/svn/llvm/projects/libcxx/include 

BENCHMARK=mini
IMPL=horiz
PREFIX=tuple.benchmark
THISFILE=$(PREFIX).$(BENCHMARK).$(IMPL).mk
MAIN=$(PREFIX).$(BENCHMARK).$(IMPL)
HOW=clangxx
HOWS=clangxx gcc4_8n
TIMEPREF=$(PREFIX).$(BENCHMARK).$(IMPL).time
OUT.suffix=out
TIMEFILE=$(TIMEPREF).$(HOW).$(OUT.suffix)

.PHONY: o
o: $(MAIN).o	

$(MAIN).o: $(MAIN).cpp
	$(COMPILE.$(HOW)) -c $(MAIN).cpp

.PHONY: echo
echo:
	@echo $(PREFIX).time.$(BENCHMARK).$(IMPL).$(HOW).$(OUT.suffix)
	@echo $(MAKE)

TIME_FORMAT="user:%U\nsystem:%S\nelapsed:%e"
TUPLE_MAX_SIZE=20
TUPLE_MIN_SIZE=4
TUPLE_DEL_SIZE=4
TUPLE_SIZES=$(TUPLE_MAX_SIZE)

SLIM_MACRO=SLIM_IMPL

.PHONY: time
time: $(TIMEFILE)

.PHONY: $(TIMEFILE)
$(TIMEFILE):
	-rm $@
	echo -n "COMPILER:" >>$@ ; \
	echo $(HOW) >>$@ ; \
	echo "compiler_version={" >>$@ ; \
	$(COMPILER.$(HOW)) -v 2>>$@ ; \
	echo "}" >>$@ ; \
	echo "compile_command={" >>$@ ; \
	echo $(COMPILE.$(HOW)) >>$@ ; \
	echo "}" >>$@ ; \
	for COMPILER_OPT in -O1 ; do \
	  echo "CoMPILER_OPT:"$$COMPILER_OPT >>$@ ; \
	for DU_SLIM_IMPL in -U$(SLIM_MACRO) ; do \
	  echo "DU_SLIM_IMPL:"$$DU_SLIM_IMPL >>$@ ; \
	  for TUPLE_SIZE in $(TUPLE_SIZES) ; do \
	    echo "TUPLE_SIZE:"$$TUPLE_SIZE >>$@ ; \
	    for LAST_LESS in `python ./first_to_last_ints.py $(TUPLE_MIN_SIZE) $(TUPLE_DEL_SIZE) $$TUPLE_SIZE ` ; do \
	      echo "LAST_LESS:"$$LAST_LESS >>$@ ; \
	      time --format $(TIME_FORMAT) $(COMPILE.$(HOW)) \
	        $$COMPILER_OPT \
	        -DTUPLE_TEST_IMPL=$$TUPLE_TEST_IMPL \
	        -DTUPLE_SIZE=$$TUPLE_SIZE \
	        -DLAST_LESS=$$LAST_LESS \
		$$DU_SLIM_IMPL \
	        $(MAIN).cpp 2>>$@ ; \
	    done \
	  done \
	done \
	done \
	#

.PHONY: times
times:
	for COMPILE_HOW in $(HOWS) ; do \
	  make -f $(THISFILE) -W$(MAIN).cpp HOW=$$COMPILE_HOW $(TIMEPREF).$$COMPILE_HOW.$(OUT.suffix) ; \
	done \
	#


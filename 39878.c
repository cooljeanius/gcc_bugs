/* DFP TR 24732 == WG14 / N1312 */
#define __STDC_WANT_DEC_FP__ /* Tell implementation that we want Decimal FP */

#include <stdio.h>

int main(void){
	/*
	 * If DEC_EVAL_METHOD is 0, then these triples are not the same.
	 * If DEC_EVAL_METHOD is 1 or 2, then these suffer double rounding
	 * and are the same.
	 */
	_Decimal32 f1 = 9999998.499999999999999999999999999999999999DF;
	_Decimal32 f2 = 9999998.5DF;
	_Decimal32 f3 = 9999998.500000000000000000000000000000000001DF;
	
	_Decimal32 f4 = 9999999.499999999999999999999999999999999999DF;
	_Decimal32 f5 = 9999999.5DF;
	_Decimal32 f6 = 9999999.500000000000000000000000000000000001DF;
	
	_Decimal128 ld1 = .6666666666666666666666666666666666666666DF;
	
	if( .6666667DF == ld1 ){
		(void)printf("DEC_EVAL_METHOD appears to be 0\n");
	}else if( .6666666666666667DD == ld1 ){
		(void)printf("DEC_EVAL_METHOD appears to be 1\n");
	}else if( .6666666666666666666666666666666667DL == ld1 ){
		(void)printf("DEC_EVAL_METHOD appears to be 2\n");
	}else{
		(void)printf("DEC_EVAL_METHOD appears to be -1\n");
	}
	
	if( (f1==f2) && (f2==f3) ){
		(void)printf("Fail 1 if DEC_EVAL_METHOD is 0\n");
	}
	
	if( (f4==f5) && (f5==f6) ){
		(void)printf("Fail 2 if DEC_EVAL_METHOD is 0\n");
	}
	return 0;
}

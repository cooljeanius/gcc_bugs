/* DFP TR 24732 == WG14 / N1312 */
#define __STDC_WANT_DEC_FP__ /* Tell implementation that we want Decimal FP */

#include <float.h>	/* DEC_EVAL_METHOD */
#include <stdio.h>	/* printf() */

#define  ZERO_LD10 0.DL
#define   ONE_LD10 1.DL
#define THREE_LD10 3.DL

#define   ONE_F10  1.DF
#define THREE_F10  3.DF
#define  FIVE_F10  5.DF
#define   TEN_F10 10.DF

#define  F10_PREC  7
#define  D10_PREC 16
#define LD10_PREC 34

int main(void){
	_Decimal128 ld;
	_Decimal32 f;
	_Decimal32 f_ulp;
	int j;
	
	(void)printf("DEC_EVAL_METHOD=%i\n", DEC_EVAL_METHOD);
	
	/*
	 * (1+u)**5 == 1 + 5u + 10u**2 + 10u**3 + 5u**4 + u**5
	 * Why 5?  34/7 is 4.9
	 */
	f_ulp = ONE_F10;
	for(j=0; j<=F10_PREC; j++){
		f = ONE_F10 + f_ulp;
		ld = f*f*f*f*f;
		ld -= ONE_F10;
		ld -= (FIVE_F10 *f_ulp);
		ld -= ( TEN_F10 *f_ulp*f_ulp);
		ld -= ( TEN_F10 *f_ulp*f_ulp*f_ulp);
		ld -= (FIVE_F10 *f_ulp*f_ulp*f_ulp*f_ulp);
		ld -=           (f_ulp*f_ulp*f_ulp*f_ulp*f_ulp);
		if( ZERO_LD10 != ld ) break;
		f_ulp /= TEN_F10;
	}/* j */
	j *= 5;
	
	(void)printf("\nj=%i\n", j);
	if( ((F10_PREC)<=j) && (j<=((F10_PREC+4))) ){
		(void)printf("'*' done as if DEC_EVAL_METHOD=0\n");
	}else if( ((D10_PREC)<=j) && (j<=((D10_PREC+4))) ){
		(void)printf("'*' done as if DEC_EVAL_METHOD=1\n");
	}else if( ((LD10_PREC)<=j) && (j<=((LD10_PREC+4))) ){
		(void)printf("'*' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'*' done using unknown precision\n");
	}
	
	f = ONE_F10 + f_ulp*f_ulp*f_ulp*f_ulp*f_ulp; /* ONE_F10 */
	ld = f / THREE_F10;
	
	if( .3333333DF == ld ){
		(void)printf("'/' done as if DEC_EVAL_METHOD=0\n");
	}else if( .3333333333333333DD == ld ){
		(void)printf("'/' done as if DEC_EVAL_METHOD=1\n");
	}else if( .3333333333333333333333333333333333DL == ld ){
		(void)printf("'/' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'/' done using unknown precision\n");
	}
	
	
	f_ulp = ONE_F10;
	for(j=0; j<=99; j++){
		ld = ONE_F10 + f_ulp;
		if( ONE_LD10 == ld ) break;
		f_ulp /= TEN_F10;
	}/* j */
	(void)printf("\nj=%i\n", j);
	if( (F10_PREC<=j) && (j<=(F10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=0\n");
	}else if( (D10_PREC<=j) && (j<=(D10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=1\n");
	}else if( (LD10_PREC<=j) && (j<=(LD10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'+' done using unknown precision\n");
	}
	
	
	f_ulp = ONE_F10;
	for(j=0; j<=99; j++){
		if( ONE_F10 == (ONE_F10 + f_ulp) ) break;
		f_ulp /= TEN_F10;
	}/* j */
	(void)printf("\nj=%i\n", j);
	if( (F10_PREC<=j) && (j<=(F10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=0\n");
	}else if( (D10_PREC<=j) && (j<=(D10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=1\n");
	}else if( (LD10_PREC<=j) && (j<=(LD10_PREC+1)) ){
		(void)printf("'+' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'+' done using unknown precision\n");
	}
	
	
	f_ulp = ONE_F10;
	for(j=0; j<=99; j++){
		ld = THREE_F10 - f_ulp;
		if( THREE_LD10 == ld ) break;
		f_ulp /= TEN_F10;
	}/* j */
	(void)printf("\nj=%i\n", j);
	if( (F10_PREC<=j) && (j<=(F10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=0\n");
	}else if( (D10_PREC<=j) && (j<=(D10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=1\n");
	}else if( (LD10_PREC<=j) && (j<=(LD10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'-' done using unknown precision\n");
	}
	
	
	f_ulp = ONE_F10;
	for(j=0; j<=99; j++){
		if( THREE_F10 == (THREE_F10 - f_ulp) ) break;
		f_ulp /= TEN_F10;
	}/* j */
	(void)printf("\nj=%i\n", j);
	if( (F10_PREC<=j) && (j<=(F10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=0\n");
	}else if( (D10_PREC<=j) && (j<=(D10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=1\n");
	}else if( (LD10_PREC<=j) && (j<=(LD10_PREC+1)) ){
		(void)printf("'-' done as if DEC_EVAL_METHOD=2\n");
	}else{
		(void)printf("'-' done using unknown precision\n");
	}
	
	return 0;
}

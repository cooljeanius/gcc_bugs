typedef enum {
	NONE = 0, ONE = 1, TWO = 2
} tEnumType;

int main(void){
	tEnumType var1 = TWO;
	//Warn here, because we compare an enum to a non-enum type (1)
	//should be 'if (var1 == ONE)'
	if (var1 == 1)
		return 1;
	else
		return 0;
}

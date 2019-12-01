enum EParent
{
	EP_VAL0 = 0,
	EP_VAL1 = 1,
	EP_VAL2 = 2
};

enum EChild
{
	EC_VAL0 = 0,
	EC_VAL1 = 1
};

int main()
{
	EChild childValue;
	EParent parentValue = EP_VAL2;
	
	/*...*/
	
	childValue = (EChild)parentValue; // Warning, because value 2 is not present in EChild.
	
	parentValue = (EParent)childValue; // Ok, because all EChild values are present in EParent.
	
	return 0;
};

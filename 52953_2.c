int main ()
{
	if (int a = 1)
	{
		void a (); // 1
	}
	else
	{
		void a (); // 2
	}
	
	while (int a = 0)
	{
		void a (); // 3
	}
	
	for (int a = 0;;)
	{
		void a (); // 4
		break;
	}
	for (; int a = 0;)
	{
		void a (); // 5
	}
	
	return 0;
}

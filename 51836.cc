int main()
{ 
	int i=10;
	i += (i , i++, i) + i; // also invokes UB
}

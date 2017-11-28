struct A { int a; }; 
int main() { 
	new (struct A) {{ }}; 
}

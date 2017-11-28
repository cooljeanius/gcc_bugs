// Core 1376                                                                                   
// { dg-options -std=c++0x }                                                                   

extern "C" void abort();
bool x;
struct T { ~T() { if (x) abort (); } };
int main()
{
	T&& r = static_cast<T&&>(T());
	x = true;
}

class C
	{
		bool blocked;
	};
template < class > struct F
{
    void operator* ()
    {
        C a;
        a.blocked;
    }
};

int main() {
	F<int> x;
}

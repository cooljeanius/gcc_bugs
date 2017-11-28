#include <iostream>

class Mystream
	{
	public:
		Mystream(std::istream& is1) : is{is1} {}
		Mystream& operator>>(std::string&);
		operator bool();
	private:
		std::istream& is;
	};

Mystream& Mystream::operator>>(std::string& s)
{
	is >> s;
	return *this;
}

Mystream::operator bool()
{
	return is.good();
}

int main()
{
	Mystream ms(std::cin);
	
	char ch;
	while (ms >> ch) {             // WHY NO WARNING?
		std::cout << ch << '\n';
	}
	return 0;
}

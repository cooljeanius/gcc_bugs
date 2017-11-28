// compile with -Wuseless-cast -std=c++1z
enum Enum : char { A = 0, B = 1 };
	
	struct S {
		Enum e { Enum::A };
	};

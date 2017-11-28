template<void(*)()>
struct func_ptr{};

template<class T>
struct S {
	static void invariants() {}
	typedef func_ptr<&invariants> enforce_evaluation;  // Line 7
};

S<int> s;

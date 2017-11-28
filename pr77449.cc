/* g++ considers the following code ambiguous: */

template <typename X, typename Check, typename... T>
auto bar(Check, T...) -> void;

template <typename X, typename... T>
auto bar(int, T...) -> void;

int main()
{
	bar<void>(7, ""); // ambiguous according to gcc
	bar<void>(7);     // just fine
}

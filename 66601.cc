template <typename... X, typename Y>
void f(X... x, Y y) {
}

int main(int ac, char** av) {
	f(1, 2, 3, 4);
	return 0;
}

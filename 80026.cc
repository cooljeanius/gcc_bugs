void g(int) {}
void g(bool){}

template <class...S>
void f(S...){}

int main(){
	f(&g);
}

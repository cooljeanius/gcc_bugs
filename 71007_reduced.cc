template<int N, typename T = char[N-1]>
void f(char(&)[N])
{ }

int main() {
char x[1];
f(x);
}

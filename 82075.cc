struct B { };
struct D : B { int i; };

int main() {
    auto [i] = D{};
}

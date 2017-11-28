template<int>
constexpr int variable{};

int main() {
    auto f = [] (int x) -> decltype(variable<x>) {return{};};
}

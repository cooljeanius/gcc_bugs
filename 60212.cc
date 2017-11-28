struct S { int array[1024]; };

int main() {
    const S a{{0}};
    S x(a);
}

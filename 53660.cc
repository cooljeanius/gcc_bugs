template< bool >
struct enable_if { typedef void (*t)(); };

struct c {
    template< bool t = true >
operator typename enable_if< t >::t () { return []{}; }
};

int main() {
    c()(); // error: no match for call to ‘(c) ()’
}

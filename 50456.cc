template<class A> struct Object;
template<> struct Object<float> {
	template<class A> static void
	should_error (A a)
    __attribute__ ((error ("Calling this function should trigger a compiler error")))
    ;
};
int main (int argc, char *argv[]) {
	typedef Object<float> FloatObject;
	FloatObject::should_error (7);
	return 0;
}

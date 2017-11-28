extern "C" int c_foo (void);
namespace gnulib { static int (*foo) (void) = ::c_foo; }
static int (* __attribute__ ((__unused__)) check_foo) (void) = gnulib::foo;

extern "C" int c_moo (void);
namespace gnulib { static int (*const moo) (void) = ::c_moo; }
static int (* __attribute__ ((__unused__)) check_moo) (void) = gnulib::moo;

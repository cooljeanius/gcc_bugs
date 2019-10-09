// from bug 89577

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

enum Kind : uint8_t { I64, F64, EXTENDED = 255 };

enum ExtendedKind {};

union A {
	struct {
		enum Kind kind;
		union {
			struct __attribute__((packed)) {
				uint8_t _[7];
				union {
					int64_t int64;
					double float64;
				};
			};
			struct __attribute__((packed)) {
				// The presence of a bitfield in packed struct
				// is causing GCC 8.3.0 to generate movdqu/movups/movaps with
				// -Og:
				ExtendedKind kind:24;
				struct {} value;
			} ext;
		};
	};
	uint64_t kind8;

	A(int64_t value) { kind8 = I64; int64 = value; }
	A(double value) { kind8 = F64; float64 = value; }
};

static_assert(sizeof(A) == 16);
static_assert(offsetof(A, ext) == 1);
static_assert(offsetof(A, ext.value) == 4);
static_assert(offsetof(A, float64) == 8);

A mul(A a, A b) __attribute((noinline));
A mul(A a, A b) {
	switch (a.kind) {
		case I64: {
			switch (b.kind) {
				case I64: return (a.int64 * b.int64);
				case F64: return (a.int64 * b.float64);
				case EXTENDED: abort();
				default: abort();
			}
			break;
		}
		case F64: {
			switch (b.kind) {
				case I64: return (a.float64 * b.int64);
				case F64: return (a.float64 * b.float64);
				case EXTENDED: abort();
				default: abort();
			}
			break;
		}
		case EXTENDED: abort();
		default: abort();
	}
}

// here:
int main(void) {
	A a = 1.23;
	A b = 4.56;
	for (int_fast32_t i = 0; i < (100 * 1000 * 1000); i++) {
		// We are "lucky" in year 2019 that the compiler is incapable of
		// specializing mul's return type to void:
		mul(a, b);
	}
	return 0;
}

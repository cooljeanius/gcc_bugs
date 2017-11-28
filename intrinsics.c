// gcc -Wall -mno-sse2avx -mavx2 -mtune=generic intrinsics.c
#include <stdio.h>
#include <stdint.h>
#include <assert.h>
#include <immintrin.h>

static int optimization_level = 1;
static void memcpy_16to8_generic(char *out, short const *in, int size) {
	int i;
	for (i = 0; i < size; i++)
		out[i] = (char) in[i];
}
static void memcpy_16to8_sse(char *out, short const *in, int size) {
	int i;
	for (i = 0; i < size; i += 16) {
		__m128i a, b, r;
		a = _mm_load_si128((__m128i *) (in + i));
		b = _mm_load_si128((__m128i *) (in + i + 8));
		r = _mm_packus_epi16(a, b);
		_mm_store_si128((__m128i *) (out + i), r);
	}
}
static void memcpy_16to8_avx(char *out, short const *in, int size) {
	int i;
	for (i = 0; i < size; i += 32) {
		__m256i a, b, r;
		a = _mm256_load_si256((__m256i *) (in + i));
		b = _mm256_load_si256((__m256i *) (in + i + 16));
		r = _mm256_packus_epi16(a, b);
		_mm256_stream_si256((__m256i *) (out + i), r);
	}
}

static void memcpy_16to8(char *out, short const *in, int size)
{
	assert(!(size & 0x3));
	assert(!(((intptr_t) in) & 0x3));
	assert(!(((intptr_t) out) & 0x3));
	if (optimization_level == 0) {
		memcpy_16to8_generic(out, in, size);
	} else if (optimization_level == 1) {
		memcpy_16to8_sse(out, in, size);
	} else if (optimization_level == 2) {
		memcpy_16to8_avx(out, in, size);
	} else {
		printf("Bad optimization level\n");
	}
}

int main(int argc, char *argv[]) {
	char buf8[256];
	short buf16[256];
	int i;
	if (!argv[1] || argv[1][0] > '2' || argv[1][0] < '0') {
		printf("usage %s [0|1|2]\n", argv[0]);
		return 1;
	}
	optimization_level = argv[1][0] - '0';

	for (i = 0; i < 256; i++) {
		buf8[i] = 0;
		buf16[i] = i;
	}
	memcpy_16to8(buf8, buf16, sizeof(buf8));
	for (i = 1; i < 256; i++)
		printf("%hhu ", buf8[i]);
	return 0;
}

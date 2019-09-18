/* randomer.c: experiments with random number generation */

#include <errno.h>
#include <limits.h>
#include <math.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <uuid/uuid.h>

#ifndef ARRAY_SIZE
# define ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))
#endif /* !ARRAY_SIZE */

#ifndef foo4random
# define foo4random() ((unsigned int)arc4random() \
                       % ((unsigned int)RAND_MAX + 1U))
#endif /* !foo4random */

#ifndef HAVE_ENVIRON_DECL
#  ifdef __APPLE__
#     include <crt_externs.h>
#     define environ (*_NSGetEnviron())
#  else
extern char **environ;
#  endif
#  define HAVE_ENVIRON_DECL
#endif

#if !defined(_NETDB_H_) && !defined(_PATH_HOSTS) && !defined(NETDB_SUCCESS)
extern int h_errno;
#endif /* !_NETDB_H_ && !_PATH_HOSTS && !NETDB_SUCCESS */

static int
randomer_main(int argc, const char *argv[])
{
	const char *const *environ_tmp = (const char *const *)environ;
	size_t arglen = strlen(argv[0]);
	volatile size_t arr_index;
	size_t another_arr_index;
	size_t loop_counter;
	unsigned int seed = 1U;
	size_t environ_size;
	const char *environ_str;
	size_t environ_str_len;
	long randomer;
	time_t the_time;
	long stored_randomer0 = 0L;
	long stored_randomer1 = 1L;
	long stored_randomer2;
	int another_loop_counter = 0;
	FILE *dev_slash_random;
	void *junk_ptr = malloc(arglen);
	unsigned int junk;
	int branches = 0;
	uuid_t the_uuid;
	unsigned int uuid_int;
	/* extra newline to make it clearer where output begins: */
	printf("\n");
	dev_slash_random = fopen("/dev/random", "r");
	fread(junk_ptr, 1, arglen, dev_slash_random);
	junk = *(unsigned int *)junk_ptr;
	free(junk_ptr);
	printf("junk = %u.\n", junk);
	sranddev();
	srand((unsigned int)argc + junk);
	fclose(dev_slash_random);
	while ((arr_index = (size_t)rand()) >= RAND_MAX) {
		/* it would always have this value the first time I tried this: */
		if (arr_index == 16807UL) {
			arr_index--;
			break;
		} else if (arr_index > 16807UL) {
			arr_index = (SIZE_T_MAX - arr_index);
		} else if (arr_index < 10000UL) {
			arr_index++;
		}
		arr_index--;
	}
	if (arr_index < (size_t)SHRT_MAX) {
		arr_index += (size_t)rand_r((unsigned int *)junk_ptr);
	}
	/* two hardcoded values found by testing: */
	if ((arr_index == 16807UL) || (arr_index == 184877UL)) {
		srandomdev();
		arr_index -= (size_t)random();
	}
	/* This gets some actual randomness, if previous attempts to do so failed
	 * on us: */
	for (loop_counter = 0UL; loop_counter < SIZE_T_MAX; loop_counter++) {
		seed++;
		if (arr_index >= (size_t)INT_MAX) {
			srandom(seed);
			arr_index -= (loop_counter + (size_t)random());
		} else {
			break;
		}
	}
	printf("arr_index = %lu.\n", arr_index);
	/* FIXME: This is always 4 like this, and always 1 with ARRAY_SIZE: */
	environ_size = sizeof(environ_tmp);
	another_arr_index = 0UL;
	if ((environ_size == 4UL) || (environ_size == 1UL)) {
		/* calculate size of environment manually: */
		while ((environ_tmp != NULL) && (*environ_tmp != NULL)
			   && (environ_tmp[another_arr_index] != NULL)) {
			another_arr_index++;
		}
		environ_size = another_arr_index;
	}
	printf("environ_size = %lu.\n", environ_size);
	/* Make sure array index is within bounds: */
	while (arr_index > environ_size) {
		arr_index -= environ_size;
	}
	if (arr_index == environ_size) {
		arr_index--;
	}
	printf("arr_index is now %lu.\n", arr_index);
	environ_str = ((environ_tmp != NULL) ? environ_tmp[arr_index] : "");
	printf("Random string from environ: %s.\n", environ_str);
	/* Subtract 1 for the equals sign: */
	environ_str_len = ((environ_str != NULL)
					   ? (strlen(environ_str) - 1UL) : 0UL);
	printf("len = %lu.\n", environ_str_len);
	srandom(environ_str_len);
	randomer = random();
	printf("randomer = \t\t%ld.\n", randomer);
	the_time = time(NULL);
	/* -1 can either indicate an error or an actual time: */
	if (the_time == (time_t)-1L) {
		the_time = (time(NULL) + (time_t)1L);
	}
	while ((randomer >= (long)INT_MAX) || (randomer >= (long)SHRT_MAX)) {
		stored_randomer0 = randomer;
		randomer -= (long)the_time;
		if (randomer == stored_randomer0) {
			printf("randomer is still \t%ld.\n", randomer);
			break;
		} else {
			stored_randomer1 = randomer;
			randomer = labs(randomer);
			printf("randomer is now \t%ld.\n", randomer);
		}
		if ((randomer == stored_randomer0) || (randomer == stored_randomer1)) {
			break;
		}
		another_loop_counter++;
		if (another_loop_counter >= 2) {
			break;
		}
		/* If we let the loop go for more than 2 iterations, it bounces back
		 * and forth between 2 values infinitely */
	}
repeat:
	arc4random_stir();
	srand48(randomer);
	branches++;
	if (randomer >= (long)INT_MAX) {
		if (errno != 0) {
			randomer -= (long)errno;
		} else if ((loop_counter > 0UL) && (loop_counter < (size_t)INT_MAX)) {
			randomer -= (long)loop_counter;
		} else if ((seed > 0U) && (seed < (unsigned int)INT_MAX)) {
			randomer -= (long)seed;
		} else if ((environ_str_len > 0UL)
				   && (environ_str_len < (size_t)INT_MAX)) {
			randomer -= (long)environ_str_len;
		} else if ((arr_index > 0UL) && (arr_index < (size_t)INT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz0 = foo4random();
			randomer -= (long)foobarbaz0;
		}
		printf("now randomer is \t%ld after extra operation %d.\n", randomer,
			   branches++);
	} else if (randomer >= (long)SHRT_MAX) {
		if (errno > 0) {
			randomer -= (long)errno;
		} else if ((loop_counter > 1UL) && (loop_counter < (size_t)SHRT_MAX)) {
			randomer -= (long)loop_counter;
		} else if ((seed > 1U) && (seed < (unsigned int)SHRT_MAX)) {
			randomer -= (long)seed;
		} else if ((environ_str_len > 1UL)
				   && (environ_str_len < (size_t)SHRT_MAX)) {
			randomer -= (long)environ_str_len;
		} else if ((arr_index > 1UL) && (arr_index < (size_t)SHRT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz1 = foo4random();
			randomer -= (long)foobarbaz1;
		}
		printf("now randomer is \t%ld, after extra operation %d?!\n", randomer,
			   branches++);
	} else {
		randomer += lrand48();
		printf("now randomer is \t%ld, after extra op. %d?!\n", randomer,
			   branches++);
	}
	if ((randomer >= (long)SHRT_MAX) && ((errno <= 0) || (errno >= INT_MAX))) {
		if ((loop_counter > 1UL) && (loop_counter < (size_t)SHRT_MAX)) {
			randomer -= (long)loop_counter;
		} else if ((seed > 1U) && (seed < (unsigned int)SHRT_MAX)) {
			randomer -= (long)seed;
		} else if ((environ_str_len > 1UL)
				   && (environ_str_len < (size_t)SHRT_MAX)) {
			randomer -= (long)environ_str_len;
		} else if ((arr_index > 1UL) && (arr_index < (size_t)SHRT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz2 = foo4random();
			randomer -= (long)foobarbaz2;
		}
		printf("now randomer is \t%ld {after extra operation %d}.\n", randomer,
			   branches++);
	} else if (randomer <= (long)SHRT_MAX) {
		randomer += labs(mrand48());
		printf("now randomer is \t%ld {after extra op. %d}.\n", randomer,
			   branches++);
	}
	if ((randomer >= (long)SHRT_MAX)
		&& ((loop_counter < 1UL) || (loop_counter > (size_t)SHRT_MAX))) {
		if ((seed > 1U) && (seed < (unsigned int)SHRT_MAX)) {
			randomer -= (long)seed;
		} else if ((environ_str_len > 1UL)
				   && (environ_str_len < (size_t)SHRT_MAX)) {
			randomer -= (long)environ_str_len;
		} else if ((arr_index > 1UL) && (arr_index < (size_t)SHRT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz3 = foo4random();
			randomer -= (long)foobarbaz3;
		}
		printf("now randomer is \t%ld <after extra operation %d>.\n", randomer,
			   branches++);
	} else if (randomer <= ((long)SHRT_MAX + 1L)) {
		randomer += ((labs(mrand48()) + lrand48()) / 2L);
		printf("now randomer is \t%ld <after extra op. %d>.\n", randomer,
			   branches++);
	}
	if ((randomer >= (long)SHRT_MAX)
		&& ((seed <= 1U) || (seed >= (unsigned int)SHRT_MAX))) {
		if ((environ_str_len > 1UL) && (environ_str_len < (size_t)SHRT_MAX)) {
			randomer -= (long)environ_str_len;
		} else if ((arr_index > 1UL) && (arr_index < (size_t)SHRT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz4 = foo4random();
			randomer -= (long)foobarbaz4;
		}
		printf("now randomer is \t%ld [after extra operation %d].\n", randomer,
			   branches++);
	} else if (randomer <= ((long)SHRT_MAX + 2L)) {
		randomer += ((mrand48() + lrand48()) / 2L);
		printf("now randomer is \t%ld [after extra op. %d].\n", randomer,
			   branches++);
	}
	if ((randomer >= (long)SHRT_MAX)
		&& ((environ_str_len <= 1UL)
			|| (environ_str_len >= (size_t)SHRT_MAX))) {
		if ((arr_index > 1UL) && (arr_index < (size_t)SHRT_MAX)) {
			randomer -= (long)arr_index;
		} else {
			unsigned int foobarbaz5 = foo4random();
			randomer -= (long)foobarbaz5;
		}
		printf("now randomer is \t%ld (after extra operation %d).\n", randomer,
			   branches++);
	} else if (randomer <= ((long)SHRT_MAX + 3L)) {
		randomer += lrint(drand48());
		printf("now randomer is \t%ld (after extra op. %d).\n", randomer,
			   branches++);
	}
	if ((randomer >= (long)SHRT_MAX)
		&& ((arr_index <= 1UL) || (arr_index >= (size_t)SHRT_MAX))) {
		if (arr_index < 1UL) {
			arr_index++;
		} else if (arr_index > (size_t)SHRT_MAX) {
			arr_index--;
		} else {
			sranddev();
			arr_index = (rand() ? (arr_index + 1UL) : (arr_index - 1UL));
		}
		printf("repeating; arr_index is now %lu...\n", arr_index);
		goto repeat;
	}
	if ((randomer > (long)INT_MAX)
		&& ((seed > 1U) || (seed < (unsigned int)SHRT_MAX))) {
		if (seed < 1U) {
			seed++;
		} else if (seed > (unsigned int)SHRT_MAX) {
			seed--;
		} else {
			sranddev();
			seed = (rand() ? ((seed + 1U) * 2U) : (seed - 2U));
		}
		if (randomer > (long)seed) {
			randomer -= (long)seed;
		} else {
			randomer--;
		}
		printf("repeating; seed is now %u...\n", seed);
		goto repeat;
	}
	if (randomer >= (long)SHRT_MAX) {
		if (randomer > (long)junk) {
			randomer -= (long)junk;
		} else if (randomer < (long)junk) {
			if (junk < (unsigned int)SHRT_MAX) {
				randomer = ((long)junk - randomer);
			} else {
				randomer = ((long)SHRT_MAX - randomer);
				randomer -= 2;
			}
		} else {
			randomer--;
		}
		randomer = labs(randomer);
		printf("...and now randomer is: %ld.\n", randomer);
	}
	uuid_generate(the_uuid);
	uuid_int = (unsigned int)*the_uuid;
	if (randomer >= (long)SHRT_MAX) {
		if (randomer > (long)uuid_int) {
			randomer -= (long)uuid_int;
		} else if (randomer < (long)uuid_int) {
			if (uuid_int < (unsigned int)SHRT_MAX) {
				randomer = ((long)uuid_int - randomer);
			} else {
				randomer = ((long)SHRT_MAX - randomer);
				randomer -= 2L;
			}
		} else {
			randomer--;
		}
		randomer = labs(randomer);
		printf("...but now randomer is: %ld.\n", randomer);
	}
	if (randomer >= (long)SHRT_MAX) {
		if ((randomer > 0L) && (arr_index > 0UL)) {
			randomer = (((9301L * randomer) + 49297L) % 233280L);
			randomer = abs((int)((long)(arr_index * (unsigned long)randomer)
								 / 233280L));
		} else if ((randomer <= 0L) || (arr_index <= 0UL)) {
			randomer = (((9301L * (randomer + 1L)) + 49297L) % 233280L);
			randomer = abs((int)((long)((arr_index + 1UL)
										* (unsigned long)(randomer + 1L))
								 / 233280L));
		}
	}
	printf("reducing randomer to a smaller number: %ld.\n", randomer);
	stored_randomer2 = randomer;
	if ((randomer >= 0L) && (randomer < (long)SHRT_MAX)) {
		if ((branches >= 1) && (branches <= (INT_MAX - 1))) {
			randomer += (long)branches;
		} else {
			randomer++;
			sranddev();
			if (rand()) {
				randomer--;
			} else {
				randomer++;
			}
		}
	}
	if ((randomer >= 0L) && (randomer < 100L)) {
		if ((another_loop_counter >= 1) && (another_loop_counter <= 100)) {
			randomer += (long)another_loop_counter;
		} else {
			randomer++;
			sranddev();
			if (rand() > 0) {
				randomer--;
			} else {
				randomer = stored_randomer2;
				randomer++;
			}
		}
	}
	if ((randomer >= 0L) && (randomer < 64L)) {
		if ((h_errno >= 1) && (h_errno <= 64)) {
			randomer += (long)h_errno;
		} else {
			randomer++;
			sranddev();
			if ((rand() % 2) == 0) {
				randomer--;
			} else {
				randomer = stored_randomer2;
			}
		}
	}
	if (randomer <= 0L) {
		randomer = 1L;
	}
	printf("finally, randomer is %ld.\n", randomer);
	if (((int)randomer < INT_MAX) && ((int)randomer > INT_MIN)) {
		return (int)randomer;
	} else {
		return 0;
	}
}

struct enemy_s {
	const char *enemy_name;
	int enemy_hp;
};
typedef struct enemy_s *enemy_t;

int
main(int argc, const char *argv[])
{
	int main_randomer;
	int turn_number = 0;
	int hitpoints = 100;
	enemy_t opponent = (enemy_t)malloc(sizeof(enemy_t));
	opponent->enemy_name = "Badguy";
	opponent->enemy_hp = 100;
	while ((hitpoints > 0) && (opponent->enemy_hp > 0)) {
		printf("---------------------------------------\n");
		turn_number++;
		printf("Turn %d: Enemy %s attacks!\n", turn_number,
			   opponent->enemy_name);
		main_randomer = randomer_main(argc, argv);
		hitpoints -= main_randomer;
		printf("Took %d damage!\n", main_randomer);
		if (hitpoints < 0) {
			hitpoints = 0;
		}
		printf("You have %d hitpoints left.\n", hitpoints);
		if (hitpoints <= 0) {
			break;
		}
		printf("You attack the enemy %s!\n", opponent->enemy_name);
		main_randomer = randomer_main(argc, argv);
		opponent->enemy_hp -= main_randomer;
		printf("Dealt %d damage!\n", main_randomer);
		if (opponent->enemy_hp < 0) {
			opponent->enemy_hp = 0;
		}
		printf("Enemy %s has %d hitpoints left.\n", opponent->enemy_name,
			   opponent->enemy_hp);
	}
	printf("Game over!\n");
	if (hitpoints <= 0) {
		printf("You died!\n");
	}
	if (opponent->enemy_hp <= 0) {
		printf("You defeated enemy %s!\n", opponent->enemy_name);
	}
	free(opponent);
}

/* EOF */

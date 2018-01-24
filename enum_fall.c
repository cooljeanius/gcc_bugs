#include <stddef.h>

struct s_compunit {
	struct s_compunit *next;
	enum e_cut {CU_FILE, CU_STRING} type;
};
static struct s_compunit *script;

char *
cu_fgets(void)
{
	static enum {ST_EOF, ST_FILE, ST_STRING} state = ST_EOF;

again:
	switch (state) {
	case ST_EOF:
		if (script == NULL)
			return (NULL);
		switch (script->type) {
		case CU_FILE:
			goto again;
		case CU_STRING:
			goto again;
		}
	case ST_FILE:
		script = script->next;
		goto again;
	case ST_STRING:
		goto again;
	}
	/* NOTREACHED */
	return (NULL);
}

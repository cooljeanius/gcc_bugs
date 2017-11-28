#include <stdbool.h>
bool foo(void);
bool * ProcessRequest(bool *charge_acct) {
	if (foo()) {
		charge_acct = false;
	}
	return charge_acct;
}

/* gcc -c -Wstrict-aliasing -fstrict-aliasing snippet.c */
union punu {
    char _Alignas(_Alignof(int)) buf[sizeof(int)];
    int i;
};
extern char _Alignas(_Alignof(int)) buf[sizeof(int)];
int main(void) {
    int i;
	
    /* (1) Warning: dereferencing type-punned pointer will break strict-aliasing rules */
    i = *(int*)buf;
	
    /* (2) No warning */
    union punu* u = (union punu*)buf;
    i = *(int*)u;
	
    /* (3) Warning: dereferencing type-punned pointer will break strict-aliasing rules */
    i = *(int*)(union punu*)buf;
	
    return i;	
}

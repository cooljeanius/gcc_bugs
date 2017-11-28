void do_something();

int main()
{
    char *str;
    char array[100]= "Hello";
    if((str = array)[0] == 'H'){
		do_something();
    }
}


void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */
char lc4_getc();

int main()
{

  	//char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	//char* string2    =  "Hello World2\n" ;
	char c = lc4_getc();
	lc4_putc (c);


	return 0 ;
}

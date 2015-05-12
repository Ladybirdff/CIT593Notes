void lc4_puts(char* s) ;		/* calls TRAP_PUTC, needs a character to write to display */


int main()
{

  	char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	char* string2    =  "Hello World2\n" ;
	
	lc4_puts(string1);
	lc4_puts(string2);
	
	return 0 ;
}

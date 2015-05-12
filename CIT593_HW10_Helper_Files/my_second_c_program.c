void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */


int main()
{
	void lc4_putstr(char string[]);
  	char  string1 [] = {'1', '\n', '\0'} ;
  	char* string2    =  "2\n" ;
	lc4_putstr(string1);
	lc4_putstr(string2);
	return 0 ;
}

void lc4_putstr(char* string) {
	int i = 0;
	while(string[i] != '\0') {
		lc4_putc (string[i]);
		i++;
	}
}

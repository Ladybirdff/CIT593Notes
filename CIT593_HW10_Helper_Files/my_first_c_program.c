void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */


int main()
{

  	char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	char* string2    =  "Hello World2\n" ;
	char* s3;
	int i = 0;
	
	while(string1[i] != '\0') {
		lc4_putc (string1[i]);
		i++;
	}
	i = 0;
	while(string2[i] != '\0') {
		lc4_putc (string2[i]);
		i++;
	}
	/* TO DO: output string1 and string2 in a loop */

	return 0 ;
}

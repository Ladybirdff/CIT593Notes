void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */


int main()
{
	int lc4_strlen(char string[]);
	void lc4_putstr(char string[]);
	int l1, l2;
  	char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	char* string2    =  "Hello World2\n" ;
	
	l1 = lc4_strlen(string1);
	l2 = lc4_strlen(string2);
	
	if (l1 == 13 && l2 == 13) {
		lc4_putstr("All correct!");
	}
	else {
		lc4_putstr("Mistaken!");
	}
	return 0 ;
}

void lc4_putstr(char string[]) {
	int i = 0;
	while(string[i] != '\0') {
		lc4_putc (string[i]);
		i++;
	}
}

int lc4_strlen(char string[]) {
	char* p = string;
	int i = 0;
	while(*p != '\0') {
		p++;
		i++;
	}
	return i;
}

void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */


int main()
{
	int lc4_strlen(char string[]);
	void lc4_putstr(char string[]);
	char* lc4_strcpy(char des_str[], char src_str[]);
  	char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	char* string2    =  "Hello World2\n" ;
	char string3[14];
	
	lc4_strcpy(string3, string1);
	lc4_putstr(string3);
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

char* lc4_strcpy(char des_str[], char src_str[]) {
	char* s = src_str;
	char* d = des_str;
	do {
		*(d++) = *(s++);
	} while(*s != '\0');
	return des_str;
}


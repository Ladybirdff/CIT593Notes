#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void reverse(char* str) {
	char* end;
	char t;
	
	if(str == NULL || str[0] == '\0') return ;
	
	for(end = str; *(end + 1) != '\0'; end++);
	
	while (end > str) {
		t = *end;
		*end = *str;
		*str = t;
		end--;
		str++;
	}
}

int main() {
	char a[10] = "";
	char b[10] = "abcd";
	char d[10] = {'a', 'b', '\0'};
	char* e = NULL;
	reverse(a);
	reverse(b);
	reverse(d);
	reverse(e);
	printf("%s\n%s\n%s\n%s\n", a, b, d, e);
}




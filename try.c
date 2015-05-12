#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int* copy_int_array3 (int* src)
{
	int* dest = malloc (sizeof(int)*3) ;
	dest[0]=src[0] ;
	dest[1]=src[1] ;
	dest[2]=src[2] ;
	return dest ;
}

void increment (int len, int* my_array) {
	for (int i=0 ; i<len ; i++) {
		*my_array=*my_array + 1 ;
		my_array++ ;
	}
}

int p_func ()
{
	int length = 4;
	int my_int_array [] = {0, 1, 2, 3} ;
	p++;
	printf("%d\n", *p);
//	int* my_array_copy = copy_int_array3(my_array) ; // PC=0x003E
//	int *my_int_array_ptr = &my_int_array[length-1] ;
	increment (length, my_int_array) ;
//	printf("%d, %d, %d\n", my_array_copy[0], my_array_copy[1], my_array_copy[2]);
//	free(my_array_copy);
//	my_array++;
	printf("%d\n", my_int_array[0]);
	   // print array’s out
	   // release memory allocated from the heap
	return 0 ; 
}


int main() {
//	char* the_copy = strcpy(malloc(sizeof(char)*13), "the original");
//	printf("%s\n", the_copy);
//	free(the_copy);
	p_func();
	return 0;
}




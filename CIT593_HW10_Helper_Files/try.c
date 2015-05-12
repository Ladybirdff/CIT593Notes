int* copy_int_array3 (int* src)
{
	int* dest = malloc (sizeof(int)*3) ;
	dest[0]=src[0] ;
	dest[1]=src[1] ;
	dest[2]=src[2] ;
	return dest ;
}

int p_func ()
{
	int my_array[] = {1, 2, 3} ;
	int* my_array_copy = copy_int_array3(my_array) ; // PC=0x003E
	// print array’s out
	// release memory allocated from the heap
	return 0 ; 
}

int main() {
	p_func();
	return 0;
}

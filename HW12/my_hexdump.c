#include <stdio.h>
#include <stdlib.h>

int main() {
    char* filename;
    FILE* file;
    char c;
    
    filename = (char *) malloc(100);
    printf("Please enter the name of the file you would like to convert:");
    scanf("%s", filename);
    file = fopen(filename, "r");
    if(file == NULL) {
	    fprintf(stderr, "Can't open the file!\n");
        free(filename);
	    return 1;
    }

    for(c = fgetc(file); !feof(file); c = fgetc(file)) {
    	printf("%02X ", c & 0xff);
    }
	printf("\n");
    
    fclose(file);
    free(filename);
    return 0;
}
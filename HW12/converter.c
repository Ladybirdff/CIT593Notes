#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char fileName[100];
	char* newFileName;
    FILE* rfile;
	FILE* wfile;
    char c;

    printf("Please enter the name of the file you would like to convert:");
    scanf("%s", fileName);
    rfile = fopen(fileName, "r");
	
    if(rfile == NULL) {
	    fprintf(stderr, "Can't open the file!\n");
	    return 1;
    }
	
	newFileName = (char*) malloc(100);
	strcpy(newFileName, "cp_");
    strcat(newFileName, fileName);
    wfile = fopen(newFileName, "w");
    free(newFileName);
	
    if(wfile == NULL) {
        fprintf(stderr, "Can't create new file to write to!\n");
	    return 2;
    }
	
    for(c = fgetc(rfile); !feof(rfile); c = fgetc(rfile)) {
        if(c >= 'a' && c <= 'z') {
            c = c - 'a' + 'A';
        }
        fputc(c, wfile);
    }
    
    if(fclose(rfile) == 0 && fclose(wfile) == 0) return 0;
    else return 3;
}
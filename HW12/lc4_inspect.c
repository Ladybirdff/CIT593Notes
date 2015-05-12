#include <stdio.h>
#include <stdlib.h>

int main() {
    char* fileName;
    FILE* file;
    unsigned int header[2];
    unsigned int code = 0, data = 0, symbol = 0;
    unsigned int i;
    unsigned int n, j;
    
    fileName = (char *) malloc(100);
    printf("Please enter the name of the .obj file you would like to open:");
    scanf("%s", fileName);
    file = fopen(fileName, "rb");
	free(fileName);
	
    if(file == NULL) {
        fprintf(stderr, "Can't open the file!\n");
	    return 1;
    }

    for(i = 0; /*true*/; i = (i + 1) % 2) { /* i switch between 0 and 1*/
		header[i] = fgetc(file);
		if(feof(file)) break; 
		
		if(i == 1) { // have read a header
		
			fgetc(file);
			fgetc(file); // read 2 bytes address code
			n = fgetc(file) << 8; //read n as 2 byte long number
			j = fgetc(file) & 0x00ff;
			n = n + j;
			
			//figure out what symbol it is
			if(header[0] == 0xC3 && header[1] == 0xB7) { //is symbol
				symbol++;
				for(j = 0; j < n; j++) {
					printf("%c", fgetc(file));
				}
				printf("\n");
				continue;
			} else if(header[0] == 0xCA && header[1] == 0xDE) { //is code
				code++;
			} else if(header[0] == 0xDA && header[1] == 0xDA) { //is data
				data++;
			} else { // not any of them, mistake in program?
				printf("Mistake! Not any endianness header!\n");
			}
			
			//handlings for cases of DADA and CADE
			for(j = 0; j < n; j++) {
				fgetc(file); //ignores 2 * n bytes
				fgetc(file);
			}
		}
    }
	
	printf("Number of Code headers: %d\nNumber of Data headers: %d\nNumber of Symbol headers: %d\n", code, data, symbol);
	fclose(file);
	return 0;
}







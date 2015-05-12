
#define BLACK 0x0000
#define RED   0x7C00
#define GREEN 0x03E0
#define BLUE  0x001F
#define WHITE 0x7FFF //define some colors
#define BACKGROUND 0x0000 //background is black

#define XMAX  114
#define XMIN  4
#define YMAX  114
#define YMIN  4   //X and Y values range allowed
#define XSIZE 12  
#define YSIZE 12  //i and j field blocks numbers allowed for the game board
#define CMAX  20  //max number of boxes showing up in a game


void lc4_putc(char c);		/* calls TRAP_PUTC, needs a character to write to display */
char lc4_getc();
void lc4_video_color(int color);
void lc4_video_box(int color, int x, int y);
int field[YSIZE][XSIZE]; // global variable

void lc4_putstr(char string[]) {
	int i = 0;
	for(i = 0; string[i] != '\0'; i++) {
		lc4_putc (string[i]);
	}
}

/* for a given count of the current box, this function return a color for this box*/
int color(int count) {
	if(count % 3 == 0) return RED;
	if(count % 3 == 1) return GREEN;
	if(count % 3 == 2) return BLUE;
	else return BACKGROUND; // shouldn't happen, just to kill warning in compilation
}

/*Given a field index i, it converts to corresponding pixel coordinates y*/
int toCoordY(int i) {
	if (i >= YSIZE) return YMAX;
	return (i * 10 + YMIN);
}

/*Given a field index j, it converts to corresponding pixel coordinates x*/
int toCoordX(int j) {
	if (j >= XSIZE) return XMAX;
	return (j * 10 + XMIN);
}

/* judge if a line on the field is filled by boxes, return 1 if true, 0 if false*/
int lineFull(int i) {
	int j;
	int full = 1;
	for(j = 0; j <XSIZE; j++) {
		if (field[i][j] == BACKGROUND) {
			full = 0;
			break;
		}
	}
	return full;
}

/*Given a line located by index, erase the whole line*/
void eraseLine(int index) {
	int i, j;
	
	for(i = index; i > 0; i--) { // update the field
		for(j = 0; j <XSIZE; j++) {
			field[i][j] = field[i - 1][j];
			lc4_video_box(field[i][j], toCoordY(j), toCoordY(i));
		}
	}
	
	for(j = 0; j <XSIZE; j++) { // update the first line
		field[0][j] = BACKGROUND;
		lc4_video_box(field[0][j], toCoordY(j), toCoordY(0));
	}
}


//main program body
void tetris() {

	//int x, y, initx;  //x, y coord; initial position of x
	int boxCol; //background color; box color
	int count;  //boxes count
	char input;
	
	extern int field[YSIZE][XSIZE]; // the whole field have 12 * 12 size, each is a 10 * 10 pixels block. this saves the color of each block
	int i, j; // indexes for field, i => y axis, j => x axis
	int initI, initJ;  //initial index for a new box
	
	//values initializations
	lc4_video_color(BACKGROUND); // draw background
	initJ = XSIZE / 2;  // calculate initial position of x
	initI = 0;
	for(i = 0; i < YSIZE; i++) {
		for(j = 0; j < XSIZE; j++) {
			field[i][j] = BACKGROUND;        // each element saves color info of this block
		}
	}
	
	//each loop is one box's life span
	for(count = 0; ; count++) { // infinite loop until the block hit the top (like real Tetris)
	
		i = initI;
		j = initJ;
		boxCol = color(count); // color for this box
		if(field[i][j] != BACKGROUND) break; // if there is box at initial position, game is over!
		lc4_video_box(boxCol, toCoordX(j), toCoordY(i)); // draw box at initial position
		
		//each while loop is one move
		while(i < YSIZE - 1 && field[i + 1][j] == BACKGROUND) { // box stops when it reaches bottom or if there is other box below it
		
			input = '\0';        //in case no value is assigned in lc4_getc
			input = lc4_getc();  //get user input
			
			//field[i][j] = BACKGROUND;
			lc4_video_box(BACKGROUND, toCoordX(j), toCoordY(i)); //remove the box

			if (input == 'j' && j > 0 && field[i][j - 1] == BACKGROUND) { //moving left
				j--;
			} else if (input == 'k' && j < XSIZE - 1 && field[i][j + 1] == BACKGROUND) { //moving right
				j++;
			} else if (input == 'm' && i < YSIZE - 1 && field[i + 1][j] == BACKGROUND) { //moving down
				i++;
			} else {
				//do nothing
			}
			
			lc4_video_box(boxCol, toCoordX(j), toCoordY(i)); // draw the new box
			
		}
		
		//after a box stops at bottom
		field[i][j] = boxCol;
		if(lineFull(i) == 1) { // remove a full line?
			eraseLine(i);
		}
	}
}

int main()
{
	char* gameover = "GAME OVER!\n";
	tetris(); // play game
	lc4_putstr(gameover);
	
	return 0 ;
}

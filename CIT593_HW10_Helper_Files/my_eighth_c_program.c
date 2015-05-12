
#define BLACK 0x0000
#define RED   0x7C00
#define GREEN 0x03E0
#define BLUE  0x001F
#define WHITE 0x7FFF //define some colors

#define XMAX  114
#define XMIN  4
#define YMAX  114
#define YMIN  4   //X and Y values range allowed
#define CMAX  10  //max number of boxes in a game


void lc4_putc(char c);		/* calls TRAP_PUTC, needs a character to write to display */
char lc4_getc();
void lc4_video_color(int color);
void lc4_video_box(int color, int x, int y);

void lc4_putstr(char string[]) {
	int i = 0;
	for(i = 0; string[i] != '\0'; i++) {
		lc4_putc (string[i]);
	}
}

int main()
{

	int x, y, initx;  //x, y coord; initial position of x
	int background, boxCol; //background color; box color
	int count;  //boxes count
	char input;
	char* gameover = "GAME OVER!\n";
	
	background = BLACK;
	boxCol = RED; //box color
	lc4_video_color(background); // draw background
	
	initx = ((XMAX - XMIN) / 20) * 10 + XMIN;
//	initx *= 10;				
//	initx += XMIN;					// calculate initial position of x
	
	for(count = 0; count < CMAX; count++) {
		x = initx;
		y = YMIN;
		lc4_video_box(boxCol, x, y);
		
		while(y < YMAX) {
			input = '\0';
			input = lc4_getc();  //get user input
			
			lc4_video_box(background, x, y); //remove the box

			//y += 10;
			if (input == 'j') {
				x -= 10;
			} else if (input == 'k') {
				x += 10;
			} else if (input == 'm') {
				y += 10;
			} else {
				lc4_video_box(boxCol, x, y);
			}
			
			if(y >= YMAX) y = YMAX;
			if(x <= XMIN) x = XMIN;
			if(x >= XMAX) x = XMAX;
			
			lc4_video_box(boxCol, x, y); // draw the new box
		}
		
	}

	lc4_putstr(gameover);
	
	return 0 ;
}


#define BLACK 0x0000
#define RED   0x7C00
#define GREEN 0x03E0
#define BLUE  0x001F
#define WHITE 0x7FFF


void lc4_putc(char c) ;		/* calls TRAP_PUTC, needs a character to write to display */
void lc4_video_color(int color);
void lc4_video_box(int color, int x, int y);

int main()
{

  	//char  string1 [] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '1', '\n', '\0'} ;
  	//char* string2    =  "Hello World2\n" ;
	//char c = lc4_getc();
	//lc4_putc (c);
	int color, x, y;
	color = GREEN;
	lc4_video_color(color);
	color = RED;
	x = 64;
	y = 64;
	lc4_video_box(color, x, y);

	return 0 ;
}

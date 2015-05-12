; 
; HW #9 4) Program to move square
;

;;;
;;; Define some colors
;;;
BLACK .UCONST x0000	; 0 00000 00000 00000
RED   .UCONST x7C00	; 0 11111 00000 00000
GREEN .UCONST x03E0	; 0 00000 11111 00000
BLUE  .UCONST x001F	; 0 00000 00000 11111
WHITE .UCONST x7FFF	; 0 11111 11111 11111


.DATA
.ADDR x4000		; data
GET_CHAR

;;;
;;; Program to move square
;;;
.CODE
.ADDR x0000       ; load the following code into USER CODE region: x0000

LC R0, BLACK
TRAP x03		; draw black to the whole screen
CONST R1, #64
CONST R2, #64
LC R0, RED		; Make red square
TRAP x04		; draw red box at current position
	
LOOP_MOVING_SQUARE
	TRAP x00	; call GETC, now R0 = input character
	LEA R3, GET_CHAR
	STR R0, R3, #0	; store input char
	LC R0, BLACK
	TRAP x04	; draw black box at current position to mask red box
	LEA R3, GET_CHAR
	LDR R0, R3, #0	; load input char
	CONST R3, #106
	CMP R0, R3; subtract input character 'j'
	BRz MOVE_LEFT
	CONST R3, #107
	CMP R0, R3; subtract input character 'k'
	BRz MOVE_RIGHT
	CONST R3, #105
	CMP R0, R3; subtract input character 'i'
	BRz MOVE_UP
	CONST R3, #109
	CMP R0, R3; subtract input character 'm'
	BRz MOVE_DOWN
	CONST R3, #33	; R3 = #12 ('!')
	CMP R0, R3	; compare entered value with R3
	BRz END_MOVING_SQUARE	; If input is equal to '!', end loop 
	BRnzp DRAW_BOX  ; if others, directly draw box
	
	;update positions by input character
	MOVE_LEFT
	ADD R1, R1, #-1
	BRnzp DRAW_BOX
	MOVE_RIGHT
	ADD R1, R1, #1
	BRnzp DRAW_BOX
	MOVE_UP
	ADD R2, R2, #-1
	BRnzp DRAW_BOX
	MOVE_DOWN
	ADD R2, R2, #1
	BRnzp DRAW_BOX
	
	DRAW_BOX
	LC R0, RED		; Make red square
	TRAP x04		; draw red box at current position
	
	BRnzp LOOP_MOVING_SQUARE
END_MOVING_SQUARE

END ;end of program
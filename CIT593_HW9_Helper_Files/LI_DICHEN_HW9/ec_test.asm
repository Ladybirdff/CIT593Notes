; 
; HW #9 ec Program to update screen by 2 seconds
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
;;; Program to refresh screen every 2 seconds
;;;
.CODE
.ADDR x0000       ; load the following code into USER CODE region: x0000

TIMER_LOOP
	CONST R0, xD0
	HICONST R0, x07	; Ro = 2000
	TRAP x05
	LC R0, GREEN
	TRAP x03		; draw Green to the whole screen
	CONST R0, xD0
	HICONST R0, x07	; Ro = 2000
	TRAP x05
	LC R0, RED
	TRAP x03		; draw Green to the whole screen
	BRnzp TIMER_LOOP
END_TIMER_LOOP

END ;end of program
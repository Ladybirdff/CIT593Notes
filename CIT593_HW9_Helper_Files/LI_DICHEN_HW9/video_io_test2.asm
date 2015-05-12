; 
; HW #9 2) Test Program to draw VIDEO box
;

;;;
;;; Define some colors
;;;
BLACK .UCONST x0000	; 0 00000 00000 00000
RED   .UCONST x7C00	; 0 11111 00000 00000
GREEN .UCONST x03E0	; 0 00000 11111 00000
BLUE  .UCONST x001F	; 0 00000 00000 11111
WHITE .UCONST x7FFF	; 0 11111 11111 11111


;;;
;;; Program to test trap: TRAP_VIDEO_BOX
;;;
.CODE
.ADDR x0000       ; load the following code into USER CODE region: x0000

;; arguments to pass to trap:
;; - R0 = row to draw on (y)
;; - R1 = column to draw on (x)
;; - R2 = color to draw with 

TEST_VIDEO_BOX
	LC R0, RED		; make the box red
	CONST R1, #64	;draw box at (64, 64)
	CONST R2, #64
	TRAP x04
	CONST R1, #120	;draw box at (120, 120)
	CONST R2, #120
	TRAP x04
	CONST R1, #128	;draw box at (128, 128) (outside of screen)
	CONST R2, #128
	TRAP x04
END_TEST_VIDEO_BOX

END
; 
; HW #9 1) Test Program to set VIDEO Color
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
;;; Program to test trap: TRAP_VIDEO_COLOR
;;;
.CODE
.ADDR x0000       ; load the following code into USER CODE region: x0000
	  
;; arguments to pass to trap:
;; - R0 = color to draw with 

TEST_VIDEO_COLOR
	LC R0, GREEN		; make the whole screen green
	TRAP x03
END_TEST_VIDEO_COLOR

END
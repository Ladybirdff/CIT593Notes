;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;   OS - TRAP VECTOR TABLE   ;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.OS
.CODE
.ADDR x8000
	; TRAP vector table
	JMP TRAP_GETC		; x00
	JMP TRAP_PUTC		; x01

	OS_KBSR_ADDR .UCONST xFE00  ; ‘alias’ for keyboard status reg
	OS_KBDR_ADDR .UCONST xFE02  ; ‘alias’ for keyboard data reg
	OS_ADSR_ADDR .UCONST xFE04  ; aliases for ASCII display status reg
	OS_ADDR_ADDR .UCONST xFE06  ; aliases for ASCII display data reg
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;   OS - TRAP IMPLEMENTATION   ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.CODE
.ADDR x8200
.FALIGN
	;; by default, return to usercode: PC=x0000
	CONST R7, #0   ; R7 = 0
	HICONST R7, #0 ; R7 = 0
	RTI            ; PC = R7 ; PSR[15]=0

.CODE
TRAP_GETC
   	LC R0, OS_KBSR_ADDR  ; R0 = address of keyboard status reg
   	LDR R0, R0, #0       ; R0 = value of keyboard status reg
   	BRzp TRAP_GETC       ; if R0[15]=1, data is waiting!
                             ; else, loop and check again...

   	; reaching here, means data is waiting in keyboard data reg

   	LC R0, OS_KBDR_ADDR  ; R0 = address of keyboard data reg
   	LDR R0, R0, #0       ; R0 = value of keyboard data reg
	RTI                  ; PC = R7 ; PSR[15]=0

TRAP_PUTC
	LC R1, OS_ADSR_ADDR	; R1 = address of display status reg
	LDR R1, R1, #0		; R1 = value of status reg
	BRzp TRAP_PUTC		; If R1[15] = 1, data is ready to output, else continue to loop

	LC R1, OS_ADDR_ADDR	; R1 = address of display data reg
	STR R0, R1, #0		; write R0 to display
	RTI

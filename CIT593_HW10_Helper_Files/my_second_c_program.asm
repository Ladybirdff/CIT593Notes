		.DATA
L2_my_second_c_program 		.FILL #49
		.FILL #10
		.FILL #0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
main
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-4	;; allocate stack space for local variables
	;; function body
	ADD R1, R5, #-3
	LEA R0, L2_my_second_c_program
;ASGNB
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
;blkloop!!!!
	AND R3, R3, #0
	ADD R3, R3, #3
L4
	LDR R2, R0, #0
	STR R2, R1, #0
	ADD R0, R0, #1
	ADD R1, R1, #1
	ADD R3, R3, #-1
BRnp L4
	LDR R3, R6, #0
	ADD R6, R6, #1
	LDR R2, R6, #0
	ADD R6, R6, #1
	LEA R7, L3_my_second_c_program
	STR R7, R5, #-4
	ADD R7, R5, #-3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #0
L1_my_second_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;lc4_putstr;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
lc4_putstr
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	CONST R7, #0
	STR R7, R5, #-1
	JMP L7_my_second_c_program
L6_my_second_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putc
	ADD R6, R6, #1	;; free space for arguments
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L7_my_second_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L6_my_second_c_program
L5_my_second_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
L3_my_second_c_program 		.STRINGZ "2\n"

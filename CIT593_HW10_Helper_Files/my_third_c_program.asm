		.DATA
L2_my_third_c_program 		.FILL #72
		.FILL #101
		.FILL #108
		.FILL #108
		.FILL #111
		.FILL #32
		.FILL #87
		.FILL #111
		.FILL #114
		.FILL #108
		.FILL #100
		.FILL #49
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
	CONST R7, #18
	SUB R6, R6, R7	;; allocate stack space for local variables
	;; function body
	ADD R1, R5, #-16
	LEA R0, L2_my_third_c_program
;ASGNB
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
;blkloop!!!!
	AND R3, R3, #0
	ADD R3, R3, #14
L8
	LDR R2, R0, #0
	STR R2, R1, #0
	ADD R0, R0, #1
	ADD R1, R1, #1
	ADD R3, R3, #-1
BRnp L8
	LDR R3, R6, #0
	ADD R6, R6, #1
	LDR R2, R6, #0
	ADD R6, R6, #1
	LEA R7, L3_my_third_c_program
	STR R7, R5, #-17
	ADD R7, R5, #-16
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_strlen
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-1
	LDR R7, R5, #-17
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_strlen
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-2
	CONST R7, #13
	STR R7, R5, #-18
	LDR R3, R5, #-1
	CMP R3, R7
	BRnp L4_my_third_c_program
	LDR R7, R5, #-2
	LDR R3, R5, #-18
	CMP R7, R3
	BRnp L4_my_third_c_program
	LEA R7, L6_my_third_c_program
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	JMP L5_my_third_c_program
L4_my_third_c_program
	LEA R7, L7_my_third_c_program
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
L5_my_third_c_program
	CONST R7, #0
L1_my_third_c_program
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
	JMP L11_my_third_c_program
L10_my_third_c_program
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
L11_my_third_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L10_my_third_c_program
L9_my_third_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;lc4_strlen;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
lc4_strlen
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #3
	STR R7, R5, #-1
	CONST R7, #0
	STR R7, R5, #-2
	JMP L15_my_third_c_program
L14_my_third_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-2
	ADD R7, R7, #1
	STR R7, R5, #-2
L15_my_third_c_program
	LDR R7, R5, #-1
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L14_my_third_c_program
	LDR R7, R5, #-2
L13_my_third_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
L7_my_third_c_program 		.STRINGZ "Mistaken!"
		.DATA
L6_my_third_c_program 		.STRINGZ "All correct!"
		.DATA
L3_my_third_c_program 		.STRINGZ "Hello World2\n"

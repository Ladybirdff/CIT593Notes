		.DATA
L2_my_fifth_c_program 		.FILL #72
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
		.DATA
L4_my_fifth_c_program 		.FILL #72
		.FILL #101
		.FILL #108
		.FILL #108
		.FILL #111
		.FILL #0
		.BLKW 14
;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
main
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	CONST R7, #35
	SUB R6, R6, R7	;; allocate stack space for local variables
	;; function body
	ADD R1, R5, #-16
	ADD R1, R1, #-16
	ADD R1, R1, #-2
	LEA R0, L2_my_fifth_c_program
;ASGNB
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
;blkloop!!!!
	AND R3, R3, #0
	ADD R3, R3, #14
L5
	LDR R2, R0, #0
	STR R2, R1, #0
	ADD R0, R0, #1
	ADD R1, R1, #1
	ADD R3, R3, #-1
BRnp L5
	LDR R3, R6, #0
	ADD R6, R6, #1
	LDR R2, R6, #0
	ADD R6, R6, #1
	LEA R7, L3_my_fifth_c_program
	ADD R1, R5, #-16
	ADD R1, R1, #-4
	LEA R0, L4_my_fifth_c_program
;ASGNB
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
;blkloop!!!!
	AND R3, R3, #0
	ADD R3, R3, #15
	ADD R3, R3, #5
L6
	LDR R2, R0, #0
	STR R2, R1, #0
	ADD R0, R0, #1
	ADD R1, R1, #1
	ADD R3, R3, #-1
BRnp L6
	LDR R3, R6, #0
	ADD R6, R6, #1
	LDR R2, R6, #0
	ADD R6, R6, #1
	ADD R7, R5, #-16
	ADD R7, R7, #-16
	ADD R7, R7, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-16
	ADD R7, R7, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_strcat
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #2	;; free space for arguments
	ADD R7, R5, #-16
	ADD R7, R7, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #0
L1_my_fifth_c_program
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
	JMP L9_my_fifth_c_program
L8_my_fifth_c_program
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
L9_my_fifth_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L8_my_fifth_c_program
L7_my_fifth_c_program
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
	JMP L13_my_fifth_c_program
L12_my_fifth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-2
	ADD R7, R7, #1
	STR R7, R5, #-2
L13_my_fifth_c_program
	LDR R7, R5, #-1
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L12_my_fifth_c_program
	LDR R7, R5, #-2
L11_my_fifth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;lc4_strcpy;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
lc4_strcpy
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #4
	STR R7, R5, #-1
	LDR R7, R5, #3
	STR R7, R5, #-2
L16_my_fifth_c_program
	LDR R7, R5, #-2
	ADD R3, R7, #1
	STR R3, R5, #-2
	LDR R3, R5, #-1
	ADD R2, R3, #1
	STR R2, R5, #-1
	LDR R3, R3, #0
	STR R3, R7, #0
L17_my_fifth_c_program
	LDR R7, R5, #-1
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L16_my_fifth_c_program
	LDR R7, R5, #3
L15_my_fifth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;lc4_strcat;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
lc4_strcat
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #3
	STR R7, R5, #-1
	JMP L21_my_fifth_c_program
L20_my_fifth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L21_my_fifth_c_program
	LDR R7, R5, #-1
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L20_my_fifth_c_program
	LDR R7, R5, #4
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_strcpy
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #2	;; free space for arguments
	LDR R7, R5, #3
L19_my_fifth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
L3_my_fifth_c_program 		.STRINGZ "Hello World2\n"

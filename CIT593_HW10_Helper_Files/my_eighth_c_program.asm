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
	CONST R7, #0
	STR R7, R5, #-1
	JMP L5_my_eighth_c_program
L2_my_eighth_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putc
	ADD R6, R6, #1	;; free space for arguments
L3_my_eighth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L5_my_eighth_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L2_my_eighth_c_program
L1_my_eighth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
main
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-8	;; allocate stack space for local variables
	;; function body
	LEA R7, L7_my_eighth_c_program
	STR R7, R5, #-8
	CONST R7, #0
	STR R7, R5, #-5
	CONST R7, #0
	HICONST R7, #124
	STR R7, R5, #-4
	LDR R7, R5, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_color
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #54
	STR R7, R5, #-7
	CONST R7, #0
	STR R7, R5, #-6
L8_my_eighth_c_program
	LDR R7, R5, #-7
	STR R7, R5, #-1
	CONST R7, #4
	STR R7, R5, #-2
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
	JMP L13_my_eighth_c_program
L12_my_eighth_c_program
	CONST R7, #0
	STR R7, R5, #-3
	JSR lc4_getc
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	STR R7, R5, #-3
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
	LDR R7, R5, #-3
	CONST R3, #106
	CMP R7, R3
	BRnp L15_my_eighth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #-10
	STR R7, R5, #-1
	JMP L16_my_eighth_c_program
L15_my_eighth_c_program
	LDR R7, R5, #-3
	CONST R3, #107
	CMP R7, R3
	BRnp L17_my_eighth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #10
	STR R7, R5, #-1
	JMP L18_my_eighth_c_program
L17_my_eighth_c_program
	LDR R7, R5, #-3
	CONST R3, #109
	CMP R7, R3
	BRnp L19_my_eighth_c_program
	LDR R7, R5, #-2
	ADD R7, R7, #10
	STR R7, R5, #-2
	JMP L20_my_eighth_c_program
L19_my_eighth_c_program
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
L20_my_eighth_c_program
L18_my_eighth_c_program
L16_my_eighth_c_program
	LDR R7, R5, #-2
	CONST R3, #114
	CMP R7, R3
	BRn L21_my_eighth_c_program
	CONST R7, #114
	STR R7, R5, #-2
L21_my_eighth_c_program
	LDR R7, R5, #-1
	CONST R3, #4
	CMP R7, R3
	BRp L23_my_eighth_c_program
	CONST R7, #4
	STR R7, R5, #-1
L23_my_eighth_c_program
	LDR R7, R5, #-1
	CONST R3, #114
	CMP R7, R3
	BRn L25_my_eighth_c_program
	CONST R7, #114
	STR R7, R5, #-1
L25_my_eighth_c_program
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
L13_my_eighth_c_program
	LDR R7, R5, #-2
	CONST R3, #114
	CMP R7, R3
	BRn L12_my_eighth_c_program
L9_my_eighth_c_program
	LDR R7, R5, #-6
	ADD R7, R7, #1
	STR R7, R5, #-6
	LDR R7, R5, #-6
	CONST R3, #10
	CMP R7, R3
	BRn L8_my_eighth_c_program
	LDR R7, R5, #-8
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #0
L6_my_eighth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
L7_my_eighth_c_program 		.STRINGZ "GAME OVER!\n"

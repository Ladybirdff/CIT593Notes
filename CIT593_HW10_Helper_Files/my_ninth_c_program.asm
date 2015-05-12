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
	JMP L5_my_ninth_c_program
L2_my_ninth_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putc
	ADD R6, R6, #1	;; free space for arguments
L3_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L5_my_ninth_c_program
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L2_my_ninth_c_program
L1_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;color;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
color
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LDR R7, R5, #3
	CONST R3, #3
	MOD R7, R7, R3
	CONST R3, #0
	CMP R7, R3
	BRnp L7_my_ninth_c_program
	CONST R7, #0
	HICONST R7, #124
	JMP L6_my_ninth_c_program
L7_my_ninth_c_program
	LDR R7, R5, #3
	CONST R3, #3
	MOD R7, R7, R3
	CONST R3, #1
	CMP R7, R3
	BRnp L9_my_ninth_c_program
	CONST R7, #224
	HICONST R7, #3
	JMP L6_my_ninth_c_program
L9_my_ninth_c_program
	LDR R7, R5, #3
	CONST R3, #3
	MOD R7, R7, R3
	CONST R3, #2
	CMP R7, R3
	BRnp L11_my_ninth_c_program
	CONST R7, #31
	JMP L6_my_ninth_c_program
L11_my_ninth_c_program
	CONST R7, #0
L6_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;toCoordY;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
toCoordY
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LDR R7, R5, #3
	CONST R3, #12
	CMP R7, R3
	BRn L14_my_ninth_c_program
	CONST R7, #114
	JMP L13_my_ninth_c_program
L14_my_ninth_c_program
	CONST R7, #10
	LDR R3, R5, #3
	MUL R7, R7, R3
	ADD R7, R7, #4
L13_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;toCoordX;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
toCoordX
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LDR R7, R5, #3
	CONST R3, #12
	CMP R7, R3
	BRn L17_my_ninth_c_program
	CONST R7, #114
	JMP L16_my_ninth_c_program
L17_my_ninth_c_program
	CONST R7, #10
	LDR R3, R5, #3
	MUL R7, R7, R3
	ADD R7, R7, #4
L16_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;lineFull;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
lineFull
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	CONST R7, #1
	STR R7, R5, #-2
	CONST R7, #0
	STR R7, R5, #-1
L20_my_ninth_c_program
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #3
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L24_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-2
	JMP L22_my_ninth_c_program
L24_my_ninth_c_program
L21_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #12
	CMP R7, R3
	BRn L20_my_ninth_c_program
L22_my_ninth_c_program
	LDR R7, R5, #-2
L19_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;eraseLine;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
eraseLine
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-3	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #3
	STR R7, R5, #-2
	JMP L30_my_ninth_c_program
L27_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-1
L31_my_ninth_c_program
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R1, R3, R2
	ADD R1, R7, R1
	ADD R2, R2, #-12
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R7, R7, #0
	STR R7, R1, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-3
	LDR R3, R5, #-2
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-3
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
L32_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #12
	CMP R7, R3
	BRn L31_my_ninth_c_program
L28_my_ninth_c_program
	LDR R7, R5, #-2
	ADD R7, R7, #-1
	STR R7, R5, #-2
L30_my_ninth_c_program
	LDR R7, R5, #-2
	CONST R3, #0
	CMP R7, R3
	BRp L27_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-1
L35_my_ninth_c_program
	LDR R7, R5, #-1
	LEA R3, field
	ADD R7, R7, R3
	CONST R3, #0
	STR R3, R7, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-3
	CONST R3, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-3
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	LEA R3, field
	ADD R7, R7, R3
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
L36_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #12
	CMP R7, R3
	BRn L35_my_ninth_c_program
L26_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;tetris;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
tetris
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-13	;; allocate stack space for local variables
	;; function body
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_color
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #6
	STR R7, R5, #-7
	CONST R7, #0
	STR R7, R5, #-6
	STR R7, R5, #-2
L40_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-1
L44_my_ninth_c_program
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	CONST R3, #0
	STR R3, R7, #0
L45_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #12
	CMP R7, R3
	BRn L44_my_ninth_c_program
L41_my_ninth_c_program
	LDR R7, R5, #-2
	ADD R7, R7, #1
	STR R7, R5, #-2
	LDR R7, R5, #-2
	CONST R3, #12
	CMP R7, R3
	BRn L40_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-5
L48_my_ninth_c_program
	LDR R7, R5, #-6
	STR R7, R5, #-2
	LDR R7, R5, #-7
	STR R7, R5, #-1
	LDR R7, R5, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR color
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-4
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRz L52_my_ninth_c_program
	JMP L50_my_ninth_c_program
L52_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR toCoordX
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-8
	LDR R3, R5, #-2
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-8
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
	JMP L55_my_ninth_c_program
L54_my_ninth_c_program
	CONST R7, #0
	STR R7, R5, #-3
	JSR lc4_getc
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	STR R7, R5, #-3
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR toCoordX
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-9
	LDR R3, R5, #-2
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-9
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
	LDR R7, R5, #-3
	CONST R3, #106
	CMP R7, R3
	BRnp L57_my_ninth_c_program
	LDR R7, R5, #-1
	STR R7, R5, #-10
	CONST R3, #0
	CMP R7, R3
	BRnz L57_my_ninth_c_program
	LDR R7, R5, #-10
	ADD R7, R7, #-1
	CONST R2, #12
	LDR R1, R5, #-2
	MUL R2, R2, R1
	LEA R1, field
	ADD R2, R2, R1
	ADD R7, R7, R2
	LDR R7, R7, #0
	CMP R7, R3
	BRnp L57_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #-1
	STR R7, R5, #-1
	JMP L58_my_ninth_c_program
L57_my_ninth_c_program
	LDR R7, R5, #-3
	CONST R3, #107
	CMP R7, R3
	BRnp L59_my_ninth_c_program
	LDR R7, R5, #-1
	STR R7, R5, #-11
	CONST R3, #11
	CMP R7, R3
	BRzp L59_my_ninth_c_program
	LDR R7, R5, #-11
	ADD R7, R7, #1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L59_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	JMP L60_my_ninth_c_program
L59_my_ninth_c_program
	LDR R7, R5, #-3
	CONST R3, #109
	CMP R7, R3
	BRnp L61_my_ninth_c_program
	LDR R7, R5, #-2
	STR R7, R5, #-12
	CONST R3, #11
	CMP R7, R3
	BRzp L61_my_ninth_c_program
	CONST R7, #12
	LDR R3, R5, #-1
	LDR R2, R5, #-12
	MUL R7, R7, R2
	LEA R2, field
	ADD R2, R2, #12
	ADD R7, R7, R2
	ADD R7, R3, R7
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L61_my_ninth_c_program
	LDR R7, R5, #-2
	ADD R7, R7, #1
	STR R7, R5, #-2
L61_my_ninth_c_program
L62_my_ninth_c_program
L60_my_ninth_c_program
L58_my_ninth_c_program
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR toCoordX
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	STR R7, R5, #-13
	LDR R3, R5, #-2
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR toCoordY
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-13
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_video_box
	ADD R6, R6, #3	;; free space for arguments
L55_my_ninth_c_program
	LDR R7, R5, #-2
	STR R7, R5, #-9
	CONST R3, #11
	CMP R7, R3
	BRzp L63_my_ninth_c_program
	CONST R7, #12
	LDR R3, R5, #-1
	LDR R2, R5, #-9
	MUL R7, R7, R2
	LEA R2, field
	ADD R2, R2, #12
	ADD R7, R7, R2
	ADD R7, R3, R7
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRz L54_my_ninth_c_program
L63_my_ninth_c_program
	LDR R7, R5, #-1
	CONST R3, #12
	LDR R2, R5, #-2
	MUL R3, R3, R2
	LEA R2, field
	ADD R3, R3, R2
	ADD R7, R7, R3
	LDR R3, R5, #-4
	STR R3, R7, #0
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lineFull
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	CONST R3, #1
	CMP R7, R3
	BRnp L64_my_ninth_c_program
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR eraseLine
	ADD R6, R6, #1	;; free space for arguments
L64_my_ninth_c_program
L49_my_ninth_c_program
	LDR R7, R5, #-5
	ADD R7, R7, #1
	STR R7, R5, #-5
	JMP L48_my_ninth_c_program
L50_my_ninth_c_program
L39_my_ninth_c_program
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
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, L67_my_ninth_c_program
	STR R7, R5, #-1
	JSR tetris
	ADD R6, R6, #0	;; free space for arguments
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_putstr
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #0
L66_my_ninth_c_program
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
field 		.BLKW 144
		.DATA
L67_my_ninth_c_program 		.STRINGZ "GAME OVER!\n"

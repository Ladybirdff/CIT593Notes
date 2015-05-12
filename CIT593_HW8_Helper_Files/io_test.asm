.CODE
.ADDR x0000

LEA R2 header_array	; R2 points to header_array

HEADER_LOOP		; To output C:\> 
	LDR R0 R2 #0	; read from array
	TRAP x01	; putc
	ADD R2 R2 #1	; pointer move next
	CMPI R0 #0	; evaluate whether the character is '\0' (end of array)
	BRnp HEADER_LOOP; loop unless end of array

INPUT_LOOP
	TRAP x00	; call GETC
	TRAP x01	; call PUTC
	CONST R2 x0A	; R2 = x0A (ENTER)
	CMP R0 R2	; compare entered value with R2
	BRnp INPUT_LOOP	; If input is equal to x0A (ENTER), end loop 
END

.DATA
.ADDR x4000
header_array		; header_array = "C:\> "
	.FILL x43
	.FILL x3A
	.FILL x5C
	.FILL x3E
	.FILL x20 
	.FILL x00	; NULL, to indicate end of string
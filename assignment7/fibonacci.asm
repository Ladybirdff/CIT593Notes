;; Calculate first 20 Fibonacci numbers and store in memory x4000 to x4013

.DATA
.ADDR x4000		; data lines

fibonacci
.FILL #0		;initial values of fibonacci numbers
.FILL #1		;initial values of fibonacci numbers

.CODE
.ADDR x0000		; program lines
;; i = R0, f_(i-1) = R1, f_(i-2) = R2, f_i = R3, pointer = R4

CONST R0 #2		; i = 2
LEA R4 fibonacci	; pointer = x4000 
ADD R4 R4 #2		; pointer = x4002, because F_0 and F_1 are known
while_loop
	CMPI R0 #20
	BRzp end	; while (i < 20)
	LDR R1 R4 #-1	; R1 = F_(i-1)
	LDR R2 R4 #-2	; R2 = F_(i-2)
	ADD R3 R1 R2	; F_i = F_(i-1) + F_(i-2)
	STR R3 R4 #0	; store F_i to fibonacci_array (pointer addr)
	ADD R4 R4 #1	; pointer += 1
	ADD R0 R0 #1	; i++
	JMP while_loop; goto while loop
end
infinite_loop
	JMP infinite_loop

.OS
.CODE
.ADDR x8200
CONST R7, #0
RTI

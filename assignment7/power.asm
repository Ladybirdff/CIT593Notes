;; by Dichen Li
;; Calculate a power C = 2 * A ^ B

.CODE
.ADDR x0000

;; Main start
;; R0 = A, R1 = B, R2 = C, R3 = 2
.FALIGN
main_start
	JSR sub_pwr
	CONST R3 #2
	MUL R2 R2 R3		;; C = C * 2

;;program ends
infinite_loop
	JMP infinite_loop


;; subroutine to compute power, R2 = R0 ^ R1
.FALIGN
sub_pwr
	CONST R2 #1			;; C = 1
	while_loop
		CMPI R1 #1
		BRn end		;; while B >= 1	
		MUL R2 R2 R0		;; C = C * A
		ADD R1 R1 #-1	;; B—-
		JMP while_loop
	end				;; while loop ends
RET					;; return


;; Include a simple OS that just RTIs back to user code from the default PennSim entry point of x8200.
.OS
.CODE
.ADDR x8200
.FALIGN
	CONST R7, #0
	RTI
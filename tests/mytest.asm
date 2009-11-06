     SET R1, #5
     SET R2, #6
L1:  SUB R3, R2, R1
     BRnz R3, L2
     ADD R2, R2, R2
	SET R20, #0
	STR R20, R5, #3
	BRA L1
L2:	ADD R6, R6, #205
	LDR R5, R6, #0
	ADD R6, R6, #1
	LDR R7, R6, #0
	ADD R6, R6, #1
	RET
	.END


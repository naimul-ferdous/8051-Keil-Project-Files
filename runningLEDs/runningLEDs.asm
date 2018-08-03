ORG 00h
	MOV A, #0FEh
	MOV P1, A
	
	START:
	RL A
	MOV P1, A
	ACALL DELAY
	SJMP START
	
	DELAY:
	MOV R1, #60
	DEL1:
	MOV R2, #30
	DEL2:
	MOV R3, #15
	DEL3:
	DJNZ R3, DEL3
	DJNZ R2, DEL2
	DJNZ R1, DEL1
	RET
	
	END
ORG 0000H
	MOV A,#0FFh
	MOV P1,A
	CLR C
	START:
	RLC A
	MOV P1,A
	CPL C
	ACALL DELAY
	SJMP START
	
	DELAY:
	MOV R1,#60
	DEL1:
	MOV R2,#60
	DEL2:
	MOV R3,#20
	DEL3:
	DJNZ R3,DEL3
	DJNZ R2,DEL2
	DJNZ R1,DEL1
	
	RET
	END
	
	
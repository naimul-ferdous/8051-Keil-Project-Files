ORG 00h
	
	SETB P1.0
	AGAIN:
	MOV C, P1.0
	MOV P1.7, C
	LCALL DELAY
	SJMP AGAIN


	DELAY:
	MOV R0, #250
	DEL1:
	MOV R1, #250
	DEL2:
	DJNZ R1, DEL2
	DJNZ R0, DEL1
	RET
	
	END
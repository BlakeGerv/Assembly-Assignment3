.global _start
_start:
	MOV R0,#1
	MOV R1,#2
	MOV R5, #15
	
	CMP R0,R1 // R0-R1
	BLT lesser @ Go to "lesser" function if R0 < R1
	GBT greater @ Go to "greater" function if R0 > R1
	BEQ equal @ Go to "equal" function if R0 = R1
	BAL end @ "end" function

lesser:
	MOV R5, R5, LSR 1 @ Logical shift right 1 time
	BAL end @ go to end function
	
greater:
	MOV R5, R5, LSL 2 @ Logical shift left 2 times
	BAL end

equal:
	MOV R5, R5, ROR 1 @ Rotate right 1 time
	BAL end
	
end:
	MOV R3,#11 @ terminate program

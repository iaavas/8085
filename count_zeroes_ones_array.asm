LXI H,2000H
MVI C,05H
MVI D,00H

LOOP:MVI B,00H
	MVI E,08H 
	MOV A,M
	AGAIN: RAR
    	JNC DOWN
        INR B
        DOWN: DCR E
        JNZ AGAIN
        PUSH H        
        MOV A,L
        ADI 05H
        MOV L,A
        MOV M,B
        MVI A,08H
        SUB B
        MOV E,A
        MOV A,L
        ADI 05H
        MOV L,A
        MOV M,E
        POP H
         INX H
         DCR C
         JNZ LOOP
         
       HLT
            
    		

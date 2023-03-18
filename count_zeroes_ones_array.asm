LXI H,2000H
MVI C,05H


LOOP:MVI B,00H
	MVI D,00H
	MVI E,08H 
	MOV A,M
	AGAIN: RAR
    	JNC DOWN
        INR B
        JMP BELOW
      
        DOWN: INR D 
      BELOW:  DCR E
        JNZ AGAIN
        
        PUSH H
        
        MOV A,L
        ADI 05H
        MOV L,A
        MOV M,B
        
        MOV A,L
        ADI 05H
        MOV L,A
        MOV M,D
        
        POP H
         INX H
         DCR C
         JNZ LOOP
         
       HLT
            
    		

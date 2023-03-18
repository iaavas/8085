LXI H,2000H
LXI D,2004H
MVI C,04H

LOOP:MOV A,M
	RAR
    JC DOWN
    MOV A,M
    STAX D
    INX D
 
   DOWN: INX H
   		DCR C
        JNZ LOOP
        
        HLT
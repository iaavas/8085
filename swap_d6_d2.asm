LXI H,2000H
MVI C,04H

LOOP:MOV A,M
	ANI 44H
    CPI 44H
    JZ DONE
    CPI 00H
    JZ DONE
    MOV A,M
    XRI 44H
    MOV M,A
   DONE:INX H
   		DCR C
        JNZ LOOP
        HLT
    
;add two tables and store sum in 3rd carry in 4th
lxi b,9000h
lxi h,9020h
next:mvi e,00h
	ldax b
    add m
    mov d,a
    jnc bel
    mvi e,01h
bel:push b
	push h
mov a,c
	adi 40h
    mov c,a
    mov a,d
    stax b
    mov a,l
    adi 60h
    mov l,a
    mov m,e
    pop b
    pop h
    
    inx b
    inx h
    mov a,c
    cpi 14h
    jnz next
    hlt

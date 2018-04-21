		.data
		.equ LED_END, 0x0820
		.equ BOTAO_END, 0x0830
		
		.global _start 
        _start:		
		movia r12, LED_END
		movia r14, BOTAO_END
		movia r5, 100000 #Contador para delay
		movia r6, 0xfffffffe
		movia r7, 0b11111110110110110001001001001000 #Entrada a ser exibida
        movia r9, 0xffffffff
        xor r7, r7, r9
        stb r9, 0(r12)
        movi r8, 4
        mov r9, r0
        
checando_botao:		
			ldb r9, 0(r14)
			beq r9, r6, exibe_dados
			br checando_botao

exibe_dados:	
        stb r7, 0(r12)
		ror r7, r7, r8 #Move os �ltimos 4 bits para direita
		movia r5, 500000 #Reinicia contador do delay
		call delay

delay:	
        subi r5, r5, 1
		beq r5, r0, checando_botao
		call delay



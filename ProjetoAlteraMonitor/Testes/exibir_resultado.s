.data
.equ DELAY, 500000
.text

#Inicia a exibi��o do resultado
inicia_exibicao:
	movia r2, BOTAO_ENDERECO
	movia r3, 0x00000000e
	movi r6, 4

#Inverte os bits da entrada, para que a exibi��o ocorra corretamente
inverter_entrada:
	mov r4, r23 					#Entrada a ser exibida
        movia r5, 0xffffffff				
        xor r4, r4, r5	

#Realiza checagem para detectar um toque no bot�o
checando_botao:		
	ldb r7, 0(r2)					#Carrega o valor dos bot�es em R7
	beq r7, r3, exibe_dados				#Quando o valor dos bot�es indicar um toque
	br checando_botao				

#Exibe os dados ap�s o toque no bot�o
exibe_dados:	
        stb r4, 0(r1)
	ror r4, r4, r6 					#Move os �ltimos 4 bits para direita
	movia r5, DELAY 				#Reinicia contador do delay

#Implementa delay ap�s a exibi��o dos dados
delay:	
      	subi r5, r5, 1
	beq r5, r0, checando_botao
	br delay

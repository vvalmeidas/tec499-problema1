.data
.global TABELA
TABELA: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
.text

.global _start
_start: 
movia r1, 0x814141AB 				#Polinômio que será utilizado no cálculo do CRC
movia r2, TABELA			 	#Máscara para verificar o primeiro bit da entrada
movia r3, 0x80000000
movia r4, 0 					#Primeira entrada
movia r5, 256 					#Valor máximo de entrada para a construção da tabela

#Realiza as primeiras tarefas necessárias para a introdução de um valor pré calculado na tabela
inicia_pre_calculo_para_valor:	
	mov r6, r4				#Realiza uma cópia do valor atual
	slli r6, r6, 24 			#Move o byte menos significativo da entrada para as posições mais significativas do registrador
	movi r7, 8				#Inicia contador para verificar cada bit do byte selecionado

#Verifica cada bit do valor atual, iniciando pelo bit mais significativo
verifica_bits_do_valor_atual: 	
	beq r7, r0, armazena_resultado_memoria	#Finaliza o loop, caso todos os bits já tenham sido verificados
	and r8, r3, r6				#Aplica a máscara para verificar o bit mais significativo
	bne r8, r0, encontrou_1_MSB		#Caso o bit mais significativo não seja 0
	slli r6, r6, 1				#Desloca um bit para a esquerda, para que o próximo bit seja verificado
	subi r7, r7, 1				#Decrementa o contador
	br verifica_bits_do_valor_atual		
	
#Ao ser encontrado um bit 1 como MSB
encontrou_1_MSB:	
	slli r6, r6, 1				#Desloca um bit para a esquerda
	xor r6, r6, r1				#Realiza a operação XOR do bit com o polinômio
	subi r7, r7, 1				#Decrementa o contador
	br verifica_bits_do_valor_atual

#Armazena o resultado pré calculado na memória
armazena_resultado_memoria: 	
	stw r6, 0(r2)				#Transfere o resultado do cálculo para uma posição de memória
	addi r2, r2, 4				#Avança uma posição no ponteiro para a memória 
	addi r4, r4, 1				#Incrementa o valor a ser pré calculado
	bne r4, r5, inicia_pre_calculo_para_valor


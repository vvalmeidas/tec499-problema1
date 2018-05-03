.data
ENTRADA: .word 0x4c757465, 0x69207072, 0x6120656e, 0x74726172, 0x2065206e, 0x616f2076, 0x6f752073, 0x61697220, 0x4f732071, 0x7565206e, 0x616f2070, 0x65727465, 0x6e63656d, 0x2c206575, 0x20646576, 0x6f6c7669, 0x20416369, 0x646f206e, 0x6f206d65, 0x74616c2c, 0x20636175, 0x73612065, 0x66656974, 0x6f206c65, 0x74616c54, 0x65746f20, 0x42616978, 0x6f207465, 0x20657370, 0x72656d65, 0x20652072, 0x65737069, 0x72612051, 0x75656d20, 0x70697261, 0x20746120, 0x6e61206d, 0x69726120, 0x6461206d, 0x696e6861, 0x20666972, 0x6d612045, 0x6e74616f, 0x206d6520, 0x65737065, 0x72612072, 0x65637570, 0x65726172, 0x206f2066, 0x6f6c6567, 0x6f205365, 0x20636f6d, 0x69676f20, 0x6e616f20, 0x6d6f7272, 0x652c206e, 0x756e6361, 0x20636169, 0x2c206e61, 0x6f207465, 0x6e746120, 0x6120736f, 0x72746520, 0x576f6f64, 0x73746f63, 0x6b206e75, 0x6d20666c, 0x6f77206d, 0x65746f64, 0x69636f20, 0x446f7220, 0x6e616f20, 0x65207072, 0x61207175, 0x656d2071, 0x7565722c, 0x20646f72, 0x20652070, 0x72612071, 0x75656d20, 0x706f6465, 0x2045206e, 0x6f73736f, 0x20646573, 0x74696e6f, 0x20652075, 0x6d612063, 0x61697861, 0x20646520, 0x73757270, 0x72657361, 0x204c656f, 0x70617264, 0x6f206f75, 0x205a6562, 0x72613f20, 0x4d652064, 0x697a3a20, 0x43652071, 0x75657220, 0x73657220, 0x70726564, 0x61646f72, 0x206f7520, 0x70726573, 0x613f2041, 0x7373696d, 0x2c206f20, 0x50657263, 0x6f727269, 0x2070656c, 0x61206265, 0x69726164, 0x61206174, 0x65206120, 0x736f7274, 0x65206d65, 0x2064697a, 0x6572204d, 0x656e696e, 0x6f2c2076, 0x6f636520, 0x74656d20, 0x6f206176, 0x616c204e, 0x6f207465, 0x6d706f20, 0x65737365, 0x6e636961, 0x2c207365, 0x20657520, 0x656c6576, 0x6f206e6f, 0x20706569, 0x746f204f, 0x20657863, 0x6573736f, 0x20652065, 0x7373656e, 0x6369616c, 0x2045206d, 0x7569746f, 0x20626f6d, 0x206e616f, 0x20736520, 0x61636f6d, 0x6f646172, 0x20536174, 0x69736661, 0x63616f20, 0x7365206f, 0x20766572, 0x736f2065, 0x636f612c, 0x2076656e, 0x746f2065, 0x6d20706f, 0x7061204e, 0x616f2076, 0x6f75206d, 0x6520706f, 0x75706172, 0x2c20656e, 0x74616f20, 0x64656d6f, 0x726f7520, 0x6d657520, 0x6d616e6f, 0x204c6574, 0x27732067, 0x6f205175, 0x65726f20, 0x71756520, 0x73652066, 0x6f646120, 0x6f207175, 0x65206469, 0x73736572, 0x20546120, 0x64652070, 0x652c2076, 0x6f75206d, 0x616e7465, 0x6e646f20, 0x61206665, 0x20617465, 0x20446f20, 0x6d657520, 0x6c61646f, 0x20657520, 0x766f7520, 0x636f7272, 0x656e646f, 0x20696775, 0x616c2072, 0x616c6520, 0x41646976, 0x696e6861, 0x206f2071, 0x75652074, 0x75207175, 0x65722056, 0x61676162, 0x756e646f, 0x20717565, 0x722c206d, 0x61732065, 0x20717565, 0x6d206e61, 0x6f207175, 0x65722c20, 0x6e653f20, 0x51756572, 0x6f207665, 0x72206469, 0x6e686569, 0x726f206e, 0x61207265, 0x73706f6e, 0x73612c20, 0x73657220, 0x616d6967, 0x6f206461, 0x206f6e63, 0x61204a61, 0x63617265, 0x20717565, 0x2070616e, 0x67756120, 0x76697261, 0x20626f6c, 0x7361204d, 0x616e6f2c, 0x20656e74, 0x616f206d, 0x65206d6f, 0x73747261, 0x20612063, 0x61726120, 0x656d2063, 0x6f6e7669, 0x76656e63, 0x69612063, 0x6f6d206d, 0x616c616e, 0x64726f20, 0x71756520, 0x6a612066, 0x6f692064, 0x6120666f
.global LED_ENDERECO
.equ LED_ENDERECO, 0x2020
.global BOTAO_ENDERECO
.equ BOTAO_ENDERECO, 0x2030
.text

#Reseta os registradores anteriormente usados
reseta_registradores:
	mov r1, r0 
	mov r2, r0 
	mov r3, r0 
	mov r4, r0 
	mov r5, r0 
	mov r6, r0 	
	mov r7, r0 
	mov r8, r0 

#Inicia o cálculo para 1KB de dados de entrada
inicia_calculo_1KB:	
	movia r10, ENTRADA 				#Endereço base da entrada
	movia r11, TABELA 				#Primeiro endereço da tabela	
	movi r12, 250
	movia r13, 0xff000000 				#Mascara para ignorar 24 últimos bits de cada conjunto de 32 bits
	mov r14, r0 					#Contador de quantas sequências de 32 bits já foram obtidas da memória e calculadas
		
#Prepara o inicio do cálculo para uma sequência de 32 bits
prepara_proxima_sequencia_32bits:	
	beq r14, r12, notifica_finalizacao_calculo	#Verifica se todas as 250 sequências de 32 bits da entrada já foram computadas e inicia a exibição do resultado
		
	add r15, r14, r14				#Multiplica o deslocamento (quantidade de sequências já computadas) por 2
	add r15, r15, r14				#Multiplica o deslocamento (quantidade de sequências já computadas) por 3
	add r15, r15, r14				#Multiplica o deslocamento (quantidade de sequências já computadas) por 4

	add r15, r15, r10 				#Adiciona o endereço base da entrada ao deslocamento
	ldw r17, 0(r15) 				#Obtém a próxima entrada de 32 bits
	movi r16, 4					#Reinicia o contador de sequências de bytes já computadas na sequência de 32 bits

#Realiza o cálculo do CRC para a uma sequência de 32 bits da entrada
calculo_crc_para_32_bits:	
	beq r16, r0, finaliza_calculo_para_32bits	#Verifica se todas as 4 sequências de um byte já foram computadas, finalizando o cálculo para 32 bits em caso positivo
	and r18, r17, r13 				#Aplica máscara para ignorar os 3 bytes menos significativos da sequência de 32 bits
	xor r18, r18, r23 				#Realiza a operação XOR com o byte restante (byte mais significativo)
	srli r18, r18, 24				#Desloca o resultado da operação (index para a tabela) para direita
				
	add r19, r18, r18				#Multiplica o index por 2 para obter o deslocamento real do endereço desejado na tabela
	add r19, r19, r18				#Multiplica o index por 3 para obter o deslocamento real do endereço desejado na tabela
	add r19, r19, r18				#Multiplica o index por 4 para obter o deslocamento real do endereço desejado na tabela
	mov r20, r19
	
	add r20, r20, r11 				#Adiciona o endereço base da tabela ao deslocamento obtido
	ldw r18, 0(r20) 				#Obtém o valor pré calculado da tabela
		
	slli r23, r23, 8				#Desloca 8 bits para esquerda no resultado
	xor r23, r23, r18				#Realiza operação XOR no com valor pré calculado e resultado anterior
	subi r16, r16, 1				#Decrementa o contador de sequências de bytes já computadas na sequência de 32 bits
	slli r17, r17, 8 				#Desloca primeiro byte para fora do registrador, adicionando 0s no final
	br calculo_crc_para_32_bits

#Finaliza o cálculo para uma sequência de 32 bits
finaliza_calculo_para_32bits:	
	addi r14, r14, 1				#Incrementa o contador de sequências de 32 bits já computadas
	br prepara_proxima_sequencia_32bits	

#Apaga todos os LEDs, indicando que o cálculo foi finalizado
notifica_finalizacao_calculo:
	movia r1, LED_ENDERECO
	movia r2, 0xffffffff
	stb r2, 0(r1)

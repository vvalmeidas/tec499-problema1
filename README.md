# Calculadora CRC-32Q 

## Sistema para cálculo de CRC-32Q desenvolvido em Assembly e executado no softcore NIOS II

### Pré-Requisitos
- Quartus II Web 13.0
- Altera Monitor
- Placa FPGA Cyclone IV EP4CE6E22C8

## Organização das Pastas
- **ProjetoProcessadorQuartus**: Projeto do Quartus II contendo os arquivos de descrição do processador em Verilog, arquivos de projeto do Qsys e arquivos de diagrama de bloco do processador. 

- **ProjetoAlteraMonitor**: Projeto do Altera Monitor contendo os algoritmos em Assembly e outros arquivos gerados durante a fase de *linking*.

### Compilação
1. Execute o Quartus II
2. Abra o projeto do processador: *File > Open Project > ProjetoProcessadorQuartus.qpf*
2. Compile o projeto: *Processing > Start Compilation *

### Testes
Instruções para realização de Testes encontram-se na subpasta Testes da pasta ProjetoAlteraMonitor

### Desenvolvedores
- Nadine Cerqueira Marques
- Valmir Vinicius de Almeida Santos

Projeto desenvolvido para a disciplina TEC 499 - Sistemas Digitais do curso de Engenharia de Computação da Universidade Estadual de Feira de Santana (UEFS).

# TestesVerilog

Alguns exercicios e testes feitos em verilog;
Matéria de Sistemas Digitais;

## PARA EXECUTAR UM ARQUIVO NO TERMINAL DO WINDOWS:

#### Tutorial que eu segui para fazer a instalação verilog/gtkwave: https://www.youtube.com/watch?v=3Xm6fgKAO94&t=509s;

> > iverilog -o Arquivo.vvp Arquivo.v

> > vvp Arquivo.vvp

> > gtkwave NomeDoExecutavel.vcd

O arquivo.vcd é um arquivo de simulação do verilog;

Verilog é uma linguagem de descrição de hardware;
Usado para modelar sistemas eletronicos ao nivel do circuito;

<h1>Permite que programe de duas maneiras:</h1>
<h2>Estrutural</h2>
Quando você descreve o hardware em si, usando portar and, or, not, etc...
<h2>Como o hardware funciona</h2>
Quando voce descreve o comportamento do circuito logico;

## Diferenças que existem no verilog em comparação as outras linguagens;

Em verilog, os dados possuem a quantidade de bits que voce controlar, pode ser definido pelo usuario;

Os valores que o bit pode assumir podem ser alem de 0 e 1; Existem 4 valores mais importantes que sao os valores:
0 - quando foi inicializado e é 0;
1 - quando foi inicializado e é 1;
dontcare (vermelho) - quando o valor nao esta inicializado;
auto impedancia (amarelo) - Significa que esta no valor de auto impedancia, as vezes sinalizado como "z";

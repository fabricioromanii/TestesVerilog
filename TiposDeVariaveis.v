module testbench;

    input A;  //declarar uma entrada;
    input [3:0] AA; // Declarando uma entrada, AA, de 4 bits
    input [7:0] C, D; // Declarando duas entradas, C e D, de 8 bits
    output B; //declarar uma saida;
    output [2:0] Out; // Declarando uma saída, Out, de 3 bits
    
    //registradores dirigem os valores;
    reg x;  //registrador é um sinal que pode ter um valor atribuido;
    reg [4:0] num; //setando num como um registrador de 5 bits;
    reg In1, In2, Out; // Setando In1, In2 e Out como três registradores de 1 bit
    reg [2:0] Tx, Ty, Tz; // Setando Tx, Ty e Tz como três registradores de 3 bits

    //Nao se usa entradas ou saidas do tipo wire dentro de blocos aways e initial;
    wire x_wire;          //wire é um sinal declarado como um fio;
    wire [4:0] num_wire1; //declarando um fio num_wire1 que suporta 5 bits;
    wire [0:4] num_wire2;

    //assign usado para atribuir valor a uma entrada ou saida
    assign x_wire = x;  //essa linha significa que pra sempre o x_wire tera um valor igual a x;
    //estou ligando meu fio na saida do registrador;
    assign num_wire1 = num; //recebe valor automaticamente quando o registrador num é alterado;
    assign num_wire2 = num; //esses sao dois fios amarrados na saida do registrador num
    //um fio nunca assume um valor se nao esta ligado a um registrador;

    input [3:0] In1; // Declarando uma entrada, In1, de 4 bits
    assign In1 = 4'b1001; // In1 recebe a cadeia de 4 bits 1001.

    input [7:0] In1, In2; // Declarando duas entradas, In1 e In2, de 8 bits
    output Status; // Declarando uma saída, Status, de 1 bit
    assign Status = (In1 > In2); // Status recebe 1, se In1 for maior do que In2, caso contrário, recebe 0 


    //begin/emd utilizado para iniciar uma sequencia de comandos;
    //Quando so ha um comando a ser feito nao precisa usar begin/end; Mas é recomendado;
    initial begin 
        //initial inicializa inputs e outputs;

        $dumpvars;

        //a variavel x é atribuição ao registrador definido no começo do codigo;
        //inicialmente o valor do x esta nao inicializado;
        //passa uma unidade de tempo e x assume valor 0;

        #1; 
        x <= 0;
        //passa uma unidade de tempo e x assume valor 1;

        #1; 
        x <= 1; //essa sintaxe é para definir valores decimais;
        //passa uma unidade de tempo e x assume valor 0;

        #1; 
        x <= 1'b0;//essa sintaxe serve para setar um valor com largura fixa;
        //passa uma unidade de tempo e x assume valor 1;

        #1; 
        x <= 1'b1; //1'b significa que é um valor de largura 1 com 1 bit e que é binario;
        //passa uma unidade de tempo e x assume valor z(amarelo no gtkwave);

        #1; 
        x <= 1'bz;     //largura de 1 bit e valor z;

        #1; 
        num <= 5'b00000; //sinais de largura 5 e  valor binario;

        #1; 
        num <= 5'd10;    //largura 5 e valor decimal;

        #1; 
        num <= 5'haa;    //largura 5 e valor em hexadecimal;

        #1; 
        num <= 5'o76;     //largura 5 e valor em octal;

        #1;

        $finish;

    end
endmodule
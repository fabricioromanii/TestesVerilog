//verilog bem simples, só possui um modulo chamado testbench dentro ele;

module testbench;

    reg x;//1 registrador de 1 bit chamado "x"; 

    reg [9:0] num;//um registrador de 10 bits chamado "num"

    always #1 x <= ~x;  //vai alternando o valor de x para verdadeiro e falso;

    always #1 num <= num + 1;  //o numero ele pega e vai encrementando de 1;

    initial begin 

        $dumpvars; //se esquecer essa linha, nao vai gerar o arquivo dump.vcd;

        x <= 0;
        num <= 0;
        
        #500;  //executa por 500 unidades de tempo;

        $finish; //termina; Se esquecer essa linha, a simulação roda por um tempo indeterminado;
 
    end

endmodule
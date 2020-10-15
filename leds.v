module leds(

    input CLOCK_50, //declarando uma saida clock_50 de 1 bit;

    //entrada chamada CLOCK_50; Ela se transforma no primeiro parametro dentro do modulo testbench;

    output [1:0]LEDG //declarado uma saida, LEDG de 2bit;

    //saida de 2 bits chamada LEDG;
    //saida LEDG esta ligada com leds do module testbench;
); 

    reg[1:0] state = 2'b01;
    
    //REG é usado para quando se precisa guardar um valor ate que outro
    //valor venha pra substituir essa entrada ou saida;

    //Entradas e saidas usadas dentro de blocos always/initial devem ser do tipo reg.

    assign LEDG = state; 
    //parecido com um while que fica comparando, e se a variavel mudar ele ecexuta;

    always @(posedge CLOCK_50) begin
        state <= ~state;
    end

    //dentro deste modulo nao posso usar #;

endmodule
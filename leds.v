module leds(

    input CLOCK_50, 
    //entrada chamada CLOCK_50; Ela se transforma no primeiro parametro dentro do modulo testbench;
    output [1:0]LEDG 
    //saida de 2 bits chamada LEDG;
    //saida LEDG esta ligada com leds do module testbench;
); 

    reg[1:0] state = 2'b01;

    assign LEDG = state; 
    //parecido com um while que fica comparando, e se a variavel mudar ele ecexuta;

    always @(posedge CLOCK_50) begin
        state <= ~state;
    end

    //dentro deste modulo nao posso usar #;

endmodule
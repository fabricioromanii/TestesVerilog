module test;

    //registradores iniciados com 0;
    reg clk = 0;
    reg clk2 = 0;

    //fios;
    wire clk_wire;
    wire clk_wire2;

    //os fios estao sendo conectados;
    assign clk_wire = clk;
    assign clk_wire2 = clk2;


    //always ysado oara realizar instruções sempre que houver uma mudança em alguma entrada/saida;
    //posegde = o bloco always executará na descida do clock.
    //negedge = o bloco always executará na subida do clock.


    always #2 begin
        //faz essa operação a cada 2 unidades de tempo;
        clk <= ~clk;
        //atribuir o clk a nao clk, se ta 0 fica 1 e vice versa;
    end

    always #3 begin
        //se repete a cada 3 unidades de tempo;
        clk2 <= ~clk2;
    end

    initial begin
        //facilitar a simulção;
        $dumpvars; //cadastra os sinais do modulo pra fazer inspeção;
        clk <= 0; //passa 500 unidades de tempo;
        clk2 <= 0;

        #500;

        $finish; //termina;
        
    end

endmodule
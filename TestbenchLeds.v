/*
O modulo testbench é um modulo "principal";
ele possui dentro ele o modulo leds, que por sua vez vai ser setado em leds b(clk,leds);
Dentro dessas duas variaveis, temos a definição da entrada e da saida do modulo(clk = CLOCK_50 e leds = LEDG);
clk é um registrador conectado a entrada do modulo leds;
leds é um fio conectado a saida do modulo leds;

Nesse caso, o modulo leds foi feito de modo a ser sintetizado,
o modulo testbench nao foi feito com essa preocupação, tem coisas nele que nao sao sintetizados;
O papel do testbench no fpga seria feito pelo proprio dispositivo de radio que possui la.
Nesta placa, leds estaria ligado as luzes que ficariam piscando, e clk estaria ligao a um componente fisico da placa que iria gerar o clock;
*/



module testbench;

    //testbench é uma bancada de teste, 
    //nao é um nome padrao; uma parte do projeto que nao faz parte do projeto,
    //eu preciso fazer ela p fazer o projeto, mas ela nao vai para o circuito final;
    //é a instrumentação para fazer e testar o circuito;
    //testbench faz o papel de testar como o circuito funciona;
    
    reg clk =0;
    wire [1:0] leds;

    leds b(clk,leds);
    //modulo leds esta dentro do modulo testbench;

    always #1 begin
        clk <= ~clk;
        // <= significa que esta recebendo, nao é menor igual;
        // <= e == tem diferença, mas mais ou menos, servem a mesma função;
    end

    initial begin
         
        $dumpvars(0);
        //dumpvars é um parametro de configuracao para a ferramenta que vai simular o circuito; 
        //apartir daqui pegue todos os sinais e os anote;
        //sem ele nao apareceria nada no gtkwave;
        //tem que colocar eles na memoria, e um circuito roda muito rapido; 
        //esse dumpvars faz todos os valores serem armazenados desde o começo do circuito;
        //se bota na parte do circuito que voce quer testar;
        //agora que queremos apenas testar, vamos botar ele pra controlar oq salvamos pra mostrar ao usuario;

        #100 $finish;
        //# definiçao do tempo no ponto de vista de um valor "magico";
        //nao quer dizer segundos ou microsegundos;
        //nao existe no circutio digital, apenas no testbench;

    end

endmodule

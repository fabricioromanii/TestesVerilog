module cadeado(
    output aberto,
    input a,
    input b,
    input c,
    input d
);

assign aberto = a & b & c & d;
//aberto depende de todas as entradas a,b,c,d. 
//sao todas portas logicas and, para ter saida 1 todas precisam ser 1;

endmodule
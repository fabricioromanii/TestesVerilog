module cadeado(
    output aberto,
    input a,
    input b,
    input c,
    input d
);

reg [15:0] conta_c = 0;

always @( posedge c ) begin
    conta_c <= conta_c + 1;
end

assign aberto = a & b & conta_c == 10 & d;

endmodule
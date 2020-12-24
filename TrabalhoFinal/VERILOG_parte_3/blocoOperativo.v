//Fabricio Romani e Pedro Lill

`include "mux.v"
`include "ula.v"

module blocoOperativo(
    input clock,

    input [1:0]m0,
    input [1:0]m1,
    input [1:0]m2,
    
    input ls,
    input lx,
    input lh,
    input h, 
    
    input signed [15:0] A,
    input signed [15:0] B,
    input signed [15:0] C,
    input signed [7:0] X,

    output signed [15:0] y
);

wire signed [15:0] outX;
wire signed [15:0] outS;
wire signed [15:0] outH;

wire signed [15:0] outM0;
wire signed [15:0] outM1;
wire signed [15:0] outM2;

wire signed [15:0] outUla;

mux mux0(A,B,C,A,m0,outM0);
mux mux1(outM0,outX,outS,outH,m1,outM1);
mux mux2(outX,outM0,outS,outH,m2,outM2);

ula ula1(outM2,outM1,h,outUla);

assign y = outS;

always @(posedge clock) begin
    
end

endmodule
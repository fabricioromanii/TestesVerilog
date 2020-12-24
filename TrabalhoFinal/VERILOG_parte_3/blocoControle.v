//Fabricio Romani e Pedro Lill

`include "blocoOperativo.v"

module blocoControle (
    input signed [7:0] X,
    input signed [15:0] A,
    input signed [15:0] B,
    input signed [15:0] C,

    input clock,
    input enable,
    input reset,

    output signed [15:0] y,
    output ready,
    output valid
);
    wire [1:0] m0;
    wire [1:0] m1;
    wire [1:0] m2;
    
    wire lx;
    wire ls;
    wire lh;
    wire h;

    blocoOperativo blocoOperativo1(clock,m0,m1,m2,ls,lx,lh,h,A,B,C,X,y);


endmodule
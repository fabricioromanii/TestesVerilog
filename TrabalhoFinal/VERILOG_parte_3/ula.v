module ula(
    input [15:0] a,
    input [15:0] b,

    input h,
    
    output [15:0] o
);

    assign o = h == 1 ? a * b : a + b;

endmodule
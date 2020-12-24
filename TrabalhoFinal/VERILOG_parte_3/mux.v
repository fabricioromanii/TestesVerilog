module mux (
    input signed [15:0] A,
    input signed [15:0] B,
    input signed [15:0] C,
    input signed [15:0] D,

    input [1:0] set,

    output signed [15:0] out
);

assign out = set == 0 ? A : set == 1 ? B : set == 2 ? C : set == 3? D : 0; 

endmodule
`timescale 1ns / 1ns
`include "ex1.v"

module ex2;

reg A;
wire B;

ex1 uut(A,B);

initial begin 

    $dumpfile("ex2.vcd");
    $dumpvars(0, ex2);

    A=0;
    #20;

    A=1;
    #20;

    A=0;
    #20;

    $display("Test complete");

end

endmodule

module testbench;

    reg a = 0, b = 0, c = 0, d = 0;

    cadeado cad1(aberto, a, b, c, d);

initial begin
   $dumpvars;

    // Modifique aqui!

    #500;

   $finish; 
end

endmodule
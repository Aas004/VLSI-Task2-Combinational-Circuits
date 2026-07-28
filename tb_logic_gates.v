module tb_logic_gates;
    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Y_and, Y_or, Y_not, Y_nand, Y_nor, Y_xor, Y_xnor;

    // Instantiate all the gates
    and_gate  u_and  (.A(A), .B(B), .Y(Y_and));
    or_gate   u_or   (.A(A), .B(B), .Y(Y_or));
    not_gate  u_not  (.A(A),        .Y(Y_not)); // NOT gate only takes 1 input
    nand_gate u_nand (.A(A), .B(B), .Y(Y_nand));
    nor_gate  u_nor  (.A(A), .B(B), .Y(Y_nor));
    xor_gate  u_xor  (.A(A), .B(B), .Y(Y_xor));
    xnor_gate u_xnor (.A(A), .B(B), .Y(Y_xnor));

    initial begin
        // Required for EDA Playground to open EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_logic_gates);

        // Apply Test Vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

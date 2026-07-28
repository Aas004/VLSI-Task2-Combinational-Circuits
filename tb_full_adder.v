// Full Adder Testbench
module tb_full_adder;
    // Inputs
    reg A;
    reg B;
    reg Cin;

    // Outputs
    wire Sum;
    wire Cout;

    // Instantiate the Full Adder
    full_adder uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    initial begin
        // Required for EDA Playground to open EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_full_adder);

        // Apply Test Vectors (8 combinations for 3 inputs)
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end
endmodule

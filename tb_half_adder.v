// Half Adder Testbench
module tb_half_adder;
    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Sum;
    wire Carry;

    // Instantiate the Half Adder
    half_adder uut (
        .A(A), 
        .B(B), 
        .Sum(Sum), 
        .Carry(Carry)
    );

    initial begin
        // Required for EDA Playground to open EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_half_adder);

        // Apply Test Vectors (Truth Table inputs)
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

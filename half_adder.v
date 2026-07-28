// Half Adder Design
module half_adder (
    input A, 
    input B, 
    output Sum, 
    output Carry
);
    assign Sum = A ^ B;    // XOR gate for Sum
    assign Carry = A & B;  // AND gate for Carry
endmodule

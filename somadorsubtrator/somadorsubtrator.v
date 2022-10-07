module somadorsubtrator(
input a0,
input a1,
input a2,
input a3,
input b0,
input b1,
input b2,
input b3,
input ctrl,
output carry,
output A,
output B,
output C,
output D,
output E,
output F,
output G
);

// Primeiro módulo de Full-adder
wire b0_0;
xor(b0_0, b0, ctrl);

wire c0, s0;
full_adder fa0(.a(a0), .b(b0_0), .cin(ctrl), .cout(c0), .s(s0));

// Segundo módulo de Full-adder
wire b1_0;
xor(b1_0, b1, ctrl); // b1_0 = 0

wire c1, s1;
full_adder fa1(.a(a1), .b(b1_0), .cin(c0), .cout(c1), .s(s1));

// Terceiro módulo de Full-adder
wire b2_0;
xor(b2_0, b2, ctrl);

wire c2, s2;
full_adder fa2(.a(a2), .b(b2_0), .cin(c1), .cout(c2), .s(s2));

// Quarto módulo de Full-adder
wire b3_0;
xor(b3_0, b3, ctrl);

wire s3;
full_adder fa3(.a(a3), .b(b3_0), .cin(c2), .cout(carry), .s(s3));

sevenseg ss(.a(s3), .b(s2), .c(s1), .d(s0), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G));

endmodule
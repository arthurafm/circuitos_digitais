module cc_saida(
input [1:0] ea,
input true,
output A,
output B,
output C,
output D,
output E,
output F,
output G
);

buf(A, true);

buf(B, ea[1]);

buf(C, true);

buf(D, true);

not(E, ea[0]);

buf(F, true);

buf(G, true);

endmodule
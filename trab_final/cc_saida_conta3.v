module cc_saida_conta3(
input [1:0] ea,
output s
);

and(s, ea[1], ea[0]);

endmodule
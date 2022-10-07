module cc_saida(
input [2:0] ea,
output [3:0] saida
);

wire not_ea2, not_ea1, not_ea0;
not(not_ea2, ea[2]);
not(not_ea1, ea[1]);
not(not_ea0, ea[0]);

and(saida[3], ea[2], ea[1]);
and(saida[2], not_ea1, ea[0]);
wire buffer1;
and(buffer1, not_ea1, not_ea0);
or(saida[1], buffer1, not_ea2);
or(saida[0], ea[0], not_ea1, not_ea2);

endmodule
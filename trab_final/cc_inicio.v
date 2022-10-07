module cc_inicio(
input [2:0] ea,
output [2:0] pe
);

wire not_ea1;
not(not_ea1, ea[1]);

or(pe[2], ea[2], not_ea1);
buf(pe[1], ea[1]);
wire buffer1, buffer2;
and(buffer1, ea[2], ea[0]);
and(buffer2, ea[1], ea[0]);
or(pe[0], buffer1, buffer2);

endmodule
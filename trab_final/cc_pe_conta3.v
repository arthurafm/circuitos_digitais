module cc_pe_conta3(
input [1:0] ea,
output [1:0] pe
);

wire not_ea1, not_ea0;
not(not_ea1, ea[1]);
not(not_ea0, ea[0]);

wire buffer1, buffer2;
and(buffer1, ea[1], not_ea0);
and(buffer2, not_ea1, ea[0]);
or(pe[1], buffer1, buffer2);

or(pe[0], ea[1], not_ea0);

endmodule

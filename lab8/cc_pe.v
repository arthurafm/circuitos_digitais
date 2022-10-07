module cc_pe(
input [1:0] ea,
input down,
output [1:0] pe
);

wire n_ea0, n_ea1, n_down;
not(n_ea0, ea[0]);
not(n_ea1, ea[1]);
not(n_down, down);

wire pe0_buf1, pe0_buf2;
and(pe0_buf1, n_ea1, down);
and(pe0_buf2, ea[1], n_down);
or(pe[0], pe0_buf1, pe0_buf2, n_ea0);

wire pe1_buf1, pe1_buf2;
and(pe1_buf1, n_ea0, n_down);
and(pe1_buf2, ea[0], down);
or(pe[1], pe1_buf1, pe1_buf2, n_ea1);

endmodule
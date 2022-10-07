module cc_pe(
input [3:0] ea,
output [3:0] pe
);

wire not_ea0, not_ea1, not_ea2, not_ea3;
not(not_ea0, ea[0]);
not(not_ea1, ea[1]);
not(not_ea2, ea[2]);
not(not_ea3, ea[3]);

wire pe3_buf1, pe3_buf2;
and(pe3_buf1, ea[3], not_ea1);
and(pe3_buf2, ea[2], ea[1], ea[0]);
or(pe[3], pe3_buf1, pe3_buf2);

wire pe2_buf1, pe2_buf2, pe2_buf3;
and(pe2_buf1, ea[2], not_ea0);
and(pe2_buf2, ea[2], not_ea1);
and(pe2_buf3, not_ea2, ea[1], ea[0]);
or(pe[2], pe2_buf1, pe2_buf2, pe2_buf3);

wire pe1_buf1, pe1_buf2;
and(pe1_buf1, not_ea3, ea[1], not_ea0);
and(pe1_buf2, not_ea1, ea[0]);
or(pe[1], pe1_buf1, pe1_buf2);

wire pe0_buf1, pe0_buf2;
and(pe0_buf1, not_ea3, not_ea0);
and(pe0_buf2, not_ea1, not_ea0);
or(pe[0], pe0_buf1, pe0_buf2);

endmodule
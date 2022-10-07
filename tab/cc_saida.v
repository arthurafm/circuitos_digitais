module cc_saida(
input [3:0] ea,
output [6:0] sq
);

wire not_ea0, not_ea1, not_ea2, not_ea3;
not(not_ea0, ea[0]);
not(not_ea1, ea[1]);
not(not_ea2, ea[2]);
not(not_ea3, ea[3]);

and(sq[6], ea[3], ea[1]);




wire s5_buf1, s5_buf2, s5_buf3;
and(s5_buf1, ea[2], ea[1]);
and(s5_buf2, ea[2], ea[0]);
and(s5_buf3, ea[3], not_ea1);
or(sq[5], s5_buf1, s5_buf2, s5_buf3);





wire s4_buf1, s4_buf2, s4_buf3;
and(s4_buf1, ea[3], not_ea1);
and(s4_buf2, ea[1], ea[0]);
and(s4_buf3, ea[2], not_ea1, not_ea0);
or(sq[4], s4_buf1, s4_buf2, s4_buf3);

wire s3_buf1, s3_buf2, s3_buf3;
and(s3_buf1, not_ea3, ea[1], not_ea0);
and(s3_buf2, ea[2], not_ea0);
and(s3_buf3, ea[3], not_ea1);
or(sq[3], s3_buf1, s3_buf2, s3_buf3);

wire s2_buf1, s2_buf2, s2_buf3;
and(s2_buf1, not_ea2, ea[1]);
and(s2_buf2, not_ea2, ea[0]);
and(s2_buf3, ea[2], not_ea1, not_ea0);
or(sq[2], s2_buf1, s2_buf2, s2_buf3);

wire s1_buf1, s1_buf2;
and(s1_buf1, not_ea1, ea[0]);
and(s1_buf2, ea[1], not_ea0);
or(sq[1], s1_buf1, s1_buf2);

buf(sq[0], ea[0]);

endmodule
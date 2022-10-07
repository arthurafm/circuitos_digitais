module cc_pe(
    input down,
    input [2:0] ea,
    output [2:0] pe
);

wire not_down, not_ea2, not_ea1, not_ea0;
not(not_down, down);
not(not_ea2, ea[2]);
not(not_ea1, ea[1]);
not(not_ea0, ea[0]);

wire buffer_pe2_1, buffer_pe2_2, buffer_pe2_3, buffer_pe2_4;
and(buffer_pe2_1, down, ea[2], ea[1]);
and(buffer_pe2_2, down, not_ea2, not_ea0);
and(buffer_pe2_3, not_down, ea[2], not_ea0);
and(buffer_pe2_4, not_down, not_ea2, ea[0]);
wire buffer_pe2_5, buffer_pe2;
and(buffer_pe2_5, not_ea1, ea[0]);
or(buffer_pe2, buffer_pe2_1, buffer_pe2_2, buffer_pe2_3);
or(pe[2], buffer_pe2, buffer_pe2_4, buffer_pe2_5);

wire buffer_pe1_1, buffer_pe1_2, buffer_pe1_3, buffer_pe1_4;
and(buffer_pe1_1, down, not_ea1, not_ea0);
and(buffer_pe1_2, down, ea[1], ea[0]);
and(buffer_pe1_3, not_down, ea[2], ea[1]);
and(buffer_pe1_4, not_ea2, not_ea0);
wire buffer_pe1_5, buffer_pe1;
and(buffer_pe1_5, not_down, ea[2], ea[0]);
or(buffer_pe1, buffer_pe1_1, buffer_pe1_2, buffer_pe1_3);
or(pe[1], buffer_pe1, buffer_pe1_4, buffer_pe1_5);


buf(pe[0], not_ea0);

endmodule
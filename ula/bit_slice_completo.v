module bit_slice_completo(
input [1:0] sel,
input [3:0] a_in,
input [3:0] b_in,
input false,
output [3:0] f,
output cout
);

wire c01, c12, c23;

bit_slice bs0(	.ai(a_in[0]),
		.bi(b_in[0]),
		.cin(false),
		.s1(sel[1]),
		.s0(sel[0]),
		.cout(c01),
		.fi(f[0]));

bit_slice bs1(	.ai(a_in[1]),
		.bi(b_in[1]),
		.cin(c01),
		.s1(sel[1]),
		.s0(sel[0]),
		.cout(c12),
		.fi(f[1]));

bit_slice bs2(	.ai(a_in[2]),
		.bi(b_in[2]),
		.cin(c12),
		.s1(sel[1]),
		.s0(sel[0]),
		.cout(c23),
		.fi(f[2]));

bit_slice bs3(	.ai(a_in[3]),
		.bi(b_in[3]),
		.cin(c23),
		.s1(sel[1]),
		.s0(sel[0]),
		.cout(cout),
		.fi(f[3]));

endmodule
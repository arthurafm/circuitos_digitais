module figura_622(
input in,
input ck,
input reset,
input set,
input enable,
output q4,
output q3,
output q2,
output q1
);

DFFRSE ffd_1(	.q(q1),
		.d(in),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

DFFRSE ffd_2(	.q(q2),
		.d(q1),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

DFFRSE ffd_3(	.q(q3),
		.d(q2),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

DFFRSE ffd_4(	.q(q4),
		.d(q3),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

endmodule
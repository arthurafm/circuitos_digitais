module figura_623(
input [3:0] D,
input [1:0] S,
input ck,
input er,
input reset,
input enable,
input set,
output [3:0] Q
);

wire s_mux0, s_mux1, s_mux2, s_mux3;

mux4to1	mux0(	.e0(D[0]),
		.e1(er),
		.e2(Q[1]),
		.e3(Q[3]),
		.sel0(S[0]),
		.sel1(S[1]),
		.s(s_mux0));

DFFRSE ffd_0(	.q(Q[0]),
		.d(s_mux0),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

mux4to1 mux1(	.e0(D[1]),
		.e1(Q[0]),
		.e2(Q[2]),
		.e3(Q[0]),
		.sel0(S[0]),
		.sel1(S[1]),
		.s(s_mux1));

DFFRSE ffd_1(	.q(Q[1]),
		.d(s_mux1),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

mux4to1 mux2(	.e0(D[2]),
		.e1(Q[1]),
		.e2(Q[3]),
		.e3(Q[1]),
		.sel0(S[0]),
		.sel1(S[1]),
		.s(s_mux2));

DFFRSE ffd_2(	.q(Q[2]),
		.d(s_mux2),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

mux4to1 mux3(	.e0(D[3]),
		.e1(Q[2]),
		.e2(er),
		.e3(Q[2]),
		.sel0(S[0]),
		.sel1(S[1]),
		.s(s_mux3));

DFFRSE ffd_3(	.q(Q[3]),
		.d(s_mux3),
		.clk(ck),
		.reset(reset),
		.set(set),
		.enable(enable));

endmodule
module mux4to1(
input e0,
input e1,
input e2,
input e3,
input sel0,
input sel1,
output s
);

wire s1, s2;

mux2to1 mux1(	.e0(e0),
		.e1(e2),
		.sel(sel1),
		.s(s1));

mux2to1 mux2(	.e0(e1),
		.e1(e3),
		.sel(sel1),
		.s(s2));

mux2to1 mux3(	.e0(s1),
		.e1(s2),
		.sel(sel0),
		.s(s));

endmodule
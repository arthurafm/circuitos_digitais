module bit_slice(
input ai,
input bi,
input cin,
input s1,
input s0,
output cout,
output fi
);

wire sum, buf1, buf2, buf3;

or(buf1, ai, bi);
and(buf2, ai, bi);
not(buf3, ai);

full_adder fa(	.a(ai),
		.b(bi),
		.cin(cin),
		.cout(cout),
		.s(sum));

mux4to1 mux(	.e0(sum),
		.e1(buf1),
		.e2(buf2),
		.e3(buf3),
		.sel0(s0),
		.sel1(s1),
		.s(fi));

endmodule
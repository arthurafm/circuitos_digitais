module mux2to1(
input e0,
input e1,
input sel,
output s
);

wire buf1, buf2, n_sel;
not(n_sel, sel);
and(buf1, e0, n_sel);
and(buf2, e1, sel);
or(s, buf1, buf2);

endmodule
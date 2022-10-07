module full_adder (
input	a,
input	b,
input	cin,
output	cout,
output	s);

    wire xor1, and1, and2;

    xor(xor1, a, b);
    xor(s, xor1, cin);
    and(and1, a, b);
    and(and2, xor1, cin);
    or(cout, and1, and2);

endmodule


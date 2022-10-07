module enade(
input a,
input b,
input c,
input d,
output y);

wire and_ab;
and(and_ab, a, b);
wire and_cd;
and(and_cd, c, d);
wire not_and_cd;
not(not_and_cd, and_cd);
wire lado1;
or(lado1, and_ab, and_cd);
wire lado2;
or(lado2, not_and_cd, and_ab);
and(y, lado1, lado2);
endmodule
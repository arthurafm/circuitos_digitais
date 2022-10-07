module tresdig (
input a,
input b,
input c,
output A,
output B,
output C,
output D,
output E,
output F,
output G);

wire min0;
wire min1;
wire min2;
wire min3;
wire min4;
wire min5;
wire min6;
wire min7;
wire not_a;
wire not_b;
wire not_c;
not(not_a, a);
not(not_b, b);
not(not_c, c);
and(min0, not_a, not_b, not_c);
and(min1, not_a, not_b, c);
and(min2, not_a, b, not_c);
and(min3, not_a, b, c);
and(min4, a, not_b, not_c);
and(min5, a, not_b, c);
and(min6, a, b, not_c);
and(min7, a, b, c);
or(A, min0, min3, min5, min6);
or(A, A, min7);
or(B, min0, min1, min2, min3);
wire aux;
or(aux, B, min4, min5, min6);
or(B, aux, min7);
or(C, min0, min1, min2, min4);
or(C, C, min7);
or(D, min0, min3, min5, min6);
or(D, D, min7);
or(E, min0, min3, min5, min6);
or(F, min0, min0);
or(G, min3, min5, min6, min7);
endmodule
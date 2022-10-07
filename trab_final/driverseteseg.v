module driverseteseg(
input a,
input b,
input c,
input d,
output A,
output B,
output C,
output D,
output E,
output F,
output G);

wire not_a;
wire not_b;
wire not_c;
wire not_d;
wire min_0;
wire min_1;
wire min_2;
wire min_3;
wire min_4;
wire min_5;
wire min_6;
wire min_7;
wire min_8;
wire min_9;
wire min_A;
wire min_B;
wire min_C;
wire min_D;
wire min_E;
wire min_F;
not(not_a, a);
not(not_b, b);
not(not_c, c);
not(not_d, d);
and(min_0, not_a, not_b, not_c, not_d);
and(min_1, not_a, not_b, not_c, d);
and(min_2, not_a, not_b, c, not_d);
and(min_3, not_a, not_b, c, d);
and(min_4, not_a, b, not_c, not_d);
and(min_5, not_a, b, not_c, d);
and(min_6, not_a, b, c, not_d);
and(min_7, not_a, b, c, d);
and(min_8, a, not_b, not_c, not_d);
and(min_9, a, not_b, not_c, d);
and(min_A, a, not_b, c, not_d);
and(min_B, a, not_b, c, d);
and(min_C, a, b, not_c, not_d);
and(min_D, a, b, not_c, d);
and(min_E, a, b, c, not_d);
and(min_F, a, b, c, d);
wire aux0;
or(aux0, min_0, min_2, min_3, min_5);
wire aux1;
or(aux1, aux0, min_6, min_7, min_8);
wire aux2;
or(aux2, aux1, min_9, min_A, min_C);
or(A, aux2, min_E, min_F);
wire aux3;
or(aux3, min_0, min_1, min_2, min_3);
wire aux4;
or(aux4, aux3, min_4, min_7, min_8);
or(B, aux4, min_9, min_A, min_D);
wire aux5;
or(aux5, min_0, min_1, min_3, min_4);
wire aux6;
or(aux6, aux5, min_5, min_6, min_7);
wire aux7;
or(aux7, aux6, min_8, min_9, min_A);
or(C, aux7, min_B, min_D);
wire aux8;
or(aux8, min_0, min_2, min_3, min_5);
wire aux9;
or(aux9, aux8, min_6, min_8, min_9);
wire aux10;
or(aux10, aux9, min_B, min_C, min_D);
or(D, aux10, min_E);
wire aux11;
or(aux11, min_0, min_2, min_6, min_8);
wire aux12;
or(aux12, aux11, min_A, min_B, min_C);
or(E, aux12, min_D, min_E, min_F)~;
wire aux13;
or(aux13, min_0, min_4, min_5, min_6);
wire aux14;
or(aux14, aux13, min_8, min_9, min_A);
wire aux15;
or(aux15, aux14, min_B, min_C, min_E);
or(F, aux15, min_F);
wire aux16;
or(aux16, min_2, min_3, min_4, min_5);
wire aux17;
or(aux17, aux16, min_6, min_8, min_9);
wire aux18;
or(aux18, aux17, min_A, min_B, min_D);
or(G, aux18, min_E, min_F);
endmodule
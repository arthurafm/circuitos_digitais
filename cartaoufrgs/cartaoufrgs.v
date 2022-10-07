module cartaoufrgs(
input botao,
output A0,
output B0,
output C0,
output D0,
output E0,
output F0,
output G0,
output A1,
output B1,
output C1,
output D1,
output E1,
output F1,
output G1,
output A2,
output B2,
output C2,
output D2,
output E2,
output F2,
output G2
);

wire n_botao;
not(n_botao, botao);

wire true;
or(true, n_botao, botao);
wire false;
and(false, n_botao, botao);

// Constantes da função booleana do display
or(A0, n_botao, botao);
or(C0, n_botao, botao);
or(D0, n_botao, botao);
and(E0, n_botao, botao);
or(G0, n_botao, botao);
or(A1, n_botao, botao);
or(B1, n_botao, botao);
or(C1, n_botao, botao);
or(D1, n_botao, botao);
or(G1, n_botao, botao);
or(A2, n_botao, botao);
or(B2, n_botao, botao);
or(C2, n_botao, botao);
and(E2, n_botao, botao);
or(G2, n_botao, botao);

// Multiplexadores
wire aux0;
wire aux1;
and(aux0, n_botao, true);
and(aux1, botao, false);
or(B0, aux0, aux1);

wire aux2;
wire aux3;
and(aux2, n_botao, false);
and(aux3, botao, true);
or(F0, aux2, aux3);

wire aux4;
wire aux5;
and(aux4, n_botao, false);
and(aux5, botao, true);
or(E1, aux4, aux5);

wire aux6;
wire aux7;
and(aux6, n_botao, false);
and(aux7, botao, true);
or(F1, aux6, aux7);

wire aux8;
wire aux9;
and(aux8, n_botao, true);
and(aux9, botao, false);
or(D2, aux8, aux9);

wire aux10;
wire aux11;
and(aux10, n_botao, false);
and(aux11, botao, true);
or(F2, aux10, aux11);

endmodule
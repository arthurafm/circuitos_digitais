module trab_final(
input eck,
input er,
input es,
input eena,
input down,
output A,
output B,
output C,
output D,
output E,
output F,
output G,
output estado2,
output estado1,
output estado0
);

wire [2:0] ea;
wire [1:0] ea_contador;
wire [2:0] eat;
wire [2:0] pe;
wire [1:0] pe_contador;
wire [3:0] sq;
wire clock_3hz;

cc_inicio inicializar(                          .ea(ea),
                                                .pe(eat));

cc_pe_conta3 prox_estado_contador(              .ea(ea_contador),
                                                .pe(pe_contador));

reg2 contador(                                  .ed(pe_contador),
                                                .eck(eck),
                                                .er(er),
                                                .es(es),
                                                .eena(eena),
                                                .sq(ea_contador));

cc_saida_conta3 conta3(                         .ea(pe_contador),
                                                .s(clock_3hz));

cc_pe prox_estado(                              .down(down),
                                                .ea(eat),
                                                .pe(pe));

reg3 registrador(                               .ed(pe),
                                                .eck(eck),
                                                .er(er),
                                                .es(es),
                                                .eena(clock_3hz),
                                                .sq(ea));

cc_saida saida(                                 .ea(eat),
                                                .saida(sq));

driverseteseg display(                          .a(sq[3]),
                                                .b(sq[2]),
                                                .c(sq[1]),
                                                .d(sq[0]),
                                                .A(A),
                                                .B(B),
                                                .C(C),
                                                .D(D),
                                                .E(E),
                                                .F(F),
                                                .G(G));

buf(estado2, eat[2]);
buf(estado1, eat[1]);
buf(estado0, eat[0]);

endmodule
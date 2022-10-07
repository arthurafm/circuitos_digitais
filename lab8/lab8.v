module lab8(
input eck,
input er,
input es,
input eena,
input down,
input true,
output [6:0] sq,
output estado1,
output estado0
);

wire [1:0] ea;
wire [1:0] eat;
wire [1:0] pe;

cc_inicio inicializar(	.ea(ea),
			.eat(eat));

cc_pe prox_estado(	.ea(eat),
			.down(down),
			.pe(pe));

reg2 registrador(  	.ed(pe),
			.eck(eck),
			.er(er), 
			.es(es),
			.eena(eena),
			.sq(ea));

cc_saida saida(		.ea(eat),
			.true(true),
			.A(sq[6]),
			.B(sq[5]),
			.C(sq[4]),
			.D(sq[3]),
			.E(sq[2]),
			.F(sq[1]),
			.G(sq[0]));

buf(estado0, eat[0]);
buf(estado1, eat[1]);

endmodule
module tabuada7(
input eck,
input er,
input es,
input eena,
output [6:0] sq
);

wire [3:0] ea;
wire [3:0] pe;

cc_pe prox_estado(	.ea(ea),
			.pe(pe));

reg4 registrador(  	.ed(pe),
			.eck(eck),
			.er(er), 
			.es(es),
			.eena(eena),
			.sq(ea));

cc_saida saida(		.ea(ea),
			.sq(sq));

endmodule
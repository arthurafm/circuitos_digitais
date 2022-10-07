module reg3(
input	[2:0] ed,
input	eck,
input	er,
input	es,
input   eena,
output  [2:0] sq);


DFFRSE ff_0(	.q(sq[0]), 
				.d(ed[0]), 
				.clk(eck), 
				.reset(er), 
				.set(es), 
				.enable(eena));
    
DFFRSE ff_1(	.q(sq[1]), 
				.d(ed[1]), 
				.clk(eck), 
				.reset(er), 
				.set(es), 
				.enable(eena));

DFFRSE ff_2(	.q(sq[2]), 
				.d(ed[2]), 
				.clk(eck), 
				.reset(er), 
				.set(es), 
				.enable(eena));

endmodule

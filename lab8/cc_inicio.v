module cc_inicio(
input [1:0] ea,
output [1:0] eat
);

wire n_ea0, n_ea1;
not(n_ea0, ea[0]); 
not(n_ea1, ea[1]); 

or(eat[0], ea[0], n_ea1);
or(eat[1], n_ea0, ea[1]);

endmodule
module tb_fulladder(
	input	   ina, inb, cin,
	output	out_true,cout_true,
	output   out_test, cout_test
);

fulladder fulladder_true
(
	.ina (ina),
	.inb (inb),
	.cin (cin),

	.out(out_true),
	.cout(cout_true)
);

fulladder tb_fullader
(
	.ina (ina),
	.inb (inb),
	.cin (cin),

	.out(out_test),
	.cout(cout_test)
);

endmodule
module fulladder(
	input	ina,inb,cin,
	output	out,cout
);

assign {cout,out} = ina + inb + cin;

endmodule
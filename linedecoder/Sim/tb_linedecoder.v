`timescale 1ns/1ns

module tb_linedecoder();

reg [1:0]	in;
wire	[3:0]	out_true;
wire	[3:0]	out_test;

linedecoder dut (
  .in(in),
  .out_true(out_true),
  .out_test(out_test)
);

initial begin
	in <= 2'b00;
	$timeformat(-9, 0, "ns", 6);
	$display("Starting test...");
	#10;
end


integer time_counter;
always #5 begin
	if (time_counter < 100) begin
		time_counter = time_counter + 1;
		in <= {2'b0, $random} ;
		$display("at time %t, in=%b, in_true=%b, in_test=%b", $realtime, in, out_true, out_test);
	end
	else begin
		$finish;
	end
end

endmodule

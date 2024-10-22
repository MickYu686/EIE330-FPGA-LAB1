`timescale 1ns/1ns

module tb_comparater();

reg button1, button2;
wire led_less, led_equal, led_greater;

comparater dut (
    .button1(button1),
    .button2(button2),
    .led_less(led_less),
    .led_equal(led_equal),
    .led_greater(led_greater)
);

initial begin
    button1 = 0;
    button2 = 0;
    
    #10 button1 = 1'b0; button2 = 1'b0;
    #10 button1 = 1'b0; button2 = 1'b1;
    #10 button1 = 1'b1; button2 = 1'b0;
    #10 button1 = 1'b1; button2 = 1'b1;
    #10 $finish;
end


always @(posedge led_less or posedge led_equal or posedge led_greater) begin
    $display("LED Output: less=%b, equal=%b, greater=%b", led_less, led_equal, led_greater);
end

endmodule

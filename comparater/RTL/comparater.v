module comparater(
    input button1,
    input button2,
    output reg led_less,
    output reg led_equal,
    output reg led_greater
);

always @ (button1, button2)
begin
    if (button1 < button2) begin
        led_less <= 1'b1;
        led_equal <= 1'b0;
        led_greater <= 1'b0;
    end
    else if (button1 == button2) begin
        led_less <= 1'b0;
        led_equal <= 1'b1;
        led_greater <= 1'b0;
    end
    else begin
        led_less <= 1'b0;
        led_equal <= 1'b0;
        led_greater <= 1'b1;
    end
end

endmodule

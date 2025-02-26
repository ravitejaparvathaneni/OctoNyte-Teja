module my_design_synth (
    input wire clk,
    input wire rst,
    output reg [7:0] out_signal
);

always @(posedge clk or posedge rst) begin
    if (rst)
        out_signal <= 8'b10101010; // Start with alternate bits
    else
        out_signal <= ~out_signal; // Toggle bits every cycle
end

endmodule

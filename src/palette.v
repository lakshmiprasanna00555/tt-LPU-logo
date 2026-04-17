/*
 * Palette for uploaded LPU logo
 */

`default_nettype none

module palette (
    input  wire [2:0] pixel_index,
    output reg  [5:0] rrggbb
);

  always @(*) begin
    case (pixel_index)
      3'd0: rrggbb = 6'b111111; // white
      3'd1: rrggbb = 6'b111111; // off-white -> white on 2-bit VGA
      3'd2: rrggbb = 6'b101010; // light gray
      3'd3: rrggbb = 6'b100100; // mid gray
      3'd4: rrggbb = 6'b010010; // dark gray
      3'd5: rrggbb = 6'b000000; // black
      3'd6: rrggbb = 6'b111000; // orange
      3'd7: rrggbb = 6'b100000; // dark orange/brown
      default: rrggbb = 6'b111111;
    endcase
  end

endmodule

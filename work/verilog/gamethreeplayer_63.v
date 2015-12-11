/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamethreeplayer_63 (
    input clk,
    input rst,
    input start,
    input correct,
    output reg [7:0] playerscore
  );
  
  
  
  wire [8-1:0] M_scorectr2_value;
  reg [1-1:0] M_scorectr2_upcounter;
  reg [1-1:0] M_scorectr2_start;
  conditionalcounter_69 scorectr2 (
    .clk(clk),
    .rst(rst),
    .upcounter(M_scorectr2_upcounter),
    .start(M_scorectr2_start),
    .value(M_scorectr2_value)
  );
  
  always @* begin
    M_scorectr2_start = 1'h0;
    M_scorectr2_upcounter = 1'h0;
    if (start) begin
      M_scorectr2_start = 1'h1;
    end
    if (correct) begin
      M_scorectr2_upcounter = 1'h1;
    end
    playerscore = M_scorectr2_value;
  end
endmodule
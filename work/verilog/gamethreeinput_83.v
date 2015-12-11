/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 5
     DIV = 0
     TOP = 0
*/
module gamethreeinput_83 (
    input clk,
    input rst,
    input start,
    input yes,
    input no,
    output reg [4:0] response
  );
  
  localparam SIZE = 3'h5;
  localparam DIV = 1'h0;
  localparam TOP = 1'h0;
  
  
  reg [4:0] M_ctr_d, M_ctr_q = 1'h0;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    response = M_ctr_q[0+4-:5];
    if (yes) begin
      M_ctr_d = M_ctr_q + 5'h01;
    end
    if (no) begin
      M_ctr_d = M_ctr_q + 5'h10;
    end
    if (start) begin
      M_ctr_d = 5'h00;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
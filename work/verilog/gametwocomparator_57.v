/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gametwocomparator_57 (
    input [29:0] a,
    input [29:0] b,
    output reg equal
  );
  
  
  
  always @* begin
    equal = 1'h0;
    if (a == b) begin
      equal = 1'h1;
    end
  end
endmodule
/*
   This file was generated automatically by the Mojo IDE version B1.2.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamethreecomparator_75 (
    input [4:0] romanswer,
    input [4:0] playerinput,
    output reg equal
  );
  
  
  
  always @* begin
    equal = 1'h0;
    if (romanswer == playerinput) begin
      equal = 1'h1;
    end
  end
endmodule
/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamethreeanswerrom_66 (
    input [6:0] address,
    output reg [7:0] answer
  );
  
  
  
  localparam PRIMEORNOTDATA2 = 82'h3fffffffffffff0000000;
  
  always @* begin
    answer = PRIMEORNOTDATA2[(address)*1+0-:1];
  end
endmodule
/*
   This file was generated automatically by the Mojo IDE version B1.2.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamethreenumberrom_74 (
    input [6:0] address,
    output reg [7:0] number
  );
  
  
  
  localparam PRIMEORNOTDATA = 1024'h020305070b0d1113171d1f256165676b6d71292b2f353b3d4347494f53591113171b1d25292b2f353b3d4347494f53596165676b6d717f83898b95979da3a7adb3b5bfc1c5c7d3dfe3e5e9eff1fb5baba9816f695dddd5d9dbedf39f857bbbc95baba9816f695dddd5d9dbedf39f857bbbc98d995775394dabb1bbf357b1f979;
  
  always @* begin
    number = PRIMEORNOTDATA[(address)*8+7-:8];
  end
endmodule

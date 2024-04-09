module hex_decoder (in,out) ;
 input [3:0] in ;
 output reg [6:0] out ;
 always @ (*) begin
  case (in)
   4'd00 : out = ~(7'b0111111) ; 
   4'd01 : out = ~(7'b0000110) ;
   4'd02 : out = ~(7'b1011011) ;
   4'd03 : out = ~(7'b1001111) ;
   4'd04 : out = ~(7'b1100110) ;
   4'd05 : out = ~(7'b1101101) ;
   4'd06 : out = ~(7'b1111101) ;
   4'd07 : out = ~(7'b0000111) ;
   4'd08 : out = ~(7'b1111111) ;
   4'd09 : out = ~(7'b1101111) ;
  endcase 
 end
endmodule
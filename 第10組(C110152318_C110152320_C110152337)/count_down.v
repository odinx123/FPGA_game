// count down
module count_down (clk_in,set_time,rst,ready,h3,h2,h1,h0,second,valid,ir_ready) ;
 // ready = 1 , count 
 // ready = 0 , stop
 input clk_in,rst,ready,ir_ready;
 input [3:0] set_time ;
 output [6:0] h3, h2, h1, h0;
 reg [3:0] hex3,hex2,hex1,hex0 ;
 output reg [15:0] second ;
 output reg valid ;
 reg [1:0] mode ;
 parameter set=0,count=1 ;
 
 hex u_h1(.in(hex3), .out(h3));
 hex u_h2(.in(hex2), .out(h2));
 hex u_h3(.in(hex1), .out(h1));
 hex u_h4(.in(hex0), .out(h0));
 
 reg READY;
 always@(negedge ir_ready) READY <= !ir_ready; 
 
 always @ (posedge clk_in , negedge rst) begin
  if (!rst) begin
   second <= 0 ;
   hex3 <= 0 ;
   hex2 <= 0 ;
   hex1 <= 0 ;
   hex0 <= 0 ;
   valid <= 0 ;
   mode <= set ;
  end
  else begin
   if (ready == 0) begin
    second <= 0 ;
    hex3 <= 0 ;
    hex2 <= 0 ;
    hex1 <= 0 ;
    hex0 <= 0 ;
    mode <= set ;
   end 
   else begin 
    case (mode)
     set     : begin
          valid <= 0 ;
          if (set_time>=8'h00 && set_time<=8'h09 && READY) begin
           hex0 <= set_time ;
           hex1 <= hex0 ;
           hex2 <= hex1 ;
           hex3 <= hex2 ;
           second <= 1000*hex3 + 100*hex2 + 10*hex1 + hex0 ; 
          end
          else if (set_time == 8'h16) begin
           mode <= count ;
          end 
         end 
     count   : begin
          if (second > 0) begin
			second <= second + 1 ;
			hex3 <= second / 1000 ;
			hex2 <= (second/100) % 10 ;
			hex1 <= (second/10) % 10 ;
			hex0 <= second % 10 ;
          end
          else if (second == 0) begin
           mode <= 0 ;
           valid <= 1 ;
          end 
         end
    endcase
   end
  end 
 end 
endmodule

module hex (in,out) ;
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
module mul_clk (clk_in,mul,clk_out) ;
 input clk_in ;
 input [31:0] mul ;
 output reg clk_out = 0 ; // 5 HZ , 5_000_000 ;
 integer count ;
 always @ (posedge clk_in) begin
  if (count >= mul) begin
   count <= 1 ;
   clk_out <= ~clk_out ;
  end
  else begin
   count <= count + 1 ;
  end
 end 
endmodule
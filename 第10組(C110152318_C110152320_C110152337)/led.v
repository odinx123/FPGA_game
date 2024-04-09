module led (clk_1HZ,rst,ir_in,ir_ready,hex0,hex1,hex2,hex3,second,valid) ;
input clk_1HZ,rst,ir_ready ;
input [31:0] ir_in ;
output reg [4:0] hex0,hex1,hex2,hex3 ;
output reg [15:0] second ;
output reg valid ;
reg ready,mode ;
reg [7:0]ir_temp ;
reg [1:0] step ;
parameter up=0 , down=1 ;
reg m ;
parameter set=0 , count_down=1 , count_end=2 , stop=3 , clear=4 ;

always @ (posedge clk_1HZ) begin
 ready <= ir_ready ;
 ir_temp <= ir_in[23:16] ;
end 

always @ (posedge clk_1HZ , negedge rst) begin
 if (!rst) begin
  hex0 <= 0 ;
  hex1 <= 0 ;
  hex2 <= 0 ;
  hex3 <= 0 ;
  second <= 0 ;
  valid <= 0 ;
  mode <= 0 ;
 end 
 else begin
  case (mode)
   1'b0 : begin // up
      if (ir_ready==1 && ir_temp==8'h11) begin
       mode <= 1 ;
       step <= set ;
       second <= 0 ;
       hex3 <= 0 ;
       hex2 <= 0 ;
       hex1 <= 0 ;
       hex0 <= 0 ;
       valid <= 0 ;
      end
      else begin
       case (m)
        1'b0 : begin
           if (ir_ready==1 && ir_temp==8'h16) begin
            m <= 1'b10 ;
           end
           second <= second + 1 ;
           hex3 <= second / 1000 ;
           hex2 <= (second/100) % 10 ;
           hex1 <= (second/10) % 10 ;
           hex0 <= second % 10 ;
           valid <= 0 ;
            
           end
        1'b1 : begin
           second <= second ;
           hex3 <= hex3 ;
           hex2 <= hex2 ;
           hex1 <= hex1 ;
           hex0 <= hex0 ;
           valid <= 0 ;
           if (ir_ready==1 && ir_temp==8'h16) begin
            m <= 1'b0 ;
           end
           end
       endcase
      end
      end
   1'b1 : begin // down
      if (ir_ready==1 && ir_temp==8'h11) begin
       mode <= 1 ;
       second <= 0 ;
       hex3 <= 0 ;
       hex2 <= 0 ;
       hex1 <= 0 ;
       hex0 <= 0 ;
       valid <= 0 ;
      end
      else begin
       case (step)
        set        : begin
             if (ir_ready == 1) begin
              if (ir_temp>=0 && ir_temp<=9) begin
               hex0 <= ir_temp ;
               hex1 <= hex0 ;
               hex2 <= hex1 ;
               hex3 <= hex2 ;
               second <= 1000*hex3 + hex2*100 + hex1*10 + hex0 ;
               valid <= 0 ;
              end
              else if (ir_temp == 8'h16) begin
               step <= count_down ;
              end
             end
             end
        count_down : begin
             second <= second - 1 ;
             hex3 <= second / 1000 ;
             hex2 <= (second/100) % 10 ;
             hex1 <= (second/10) % 10 ;
             hex0 <= second % 10 ;
             valid <= 0 ;
             if (ir_ready==1 && ir_temp==8'h16) begin
              step <= stop ;
             end
             if (second == 0) begin
              step <= count_end ;
             end
             end
        count_end  : begin
             hex3 <= 0 ;
             hex2 <= 0 ;
             hex1 <= 0 ;
             hex0 <= 0 ;
             valid <= 1 ;
             step <= set ;
             end
        stop       : begin
             second <= second ;
             hex3 <= hex3 ;
             hex2 <= hex2 ;
             hex1 <= hex1 ;
             hex0 <= hex0 ;
             valid <= 0 ;
             if (ir_ready==1 && ir_temp==8'h16) begin
              step <= count_down ;
             end
             else if (ir_ready==1 && ir_temp==8'h10) begin
              step <= clear ;
             end
             end
        clear      : begin
             hex3 <= 0 ;
             hex2 <= 0 ;
             hex1 <= 0 ;
             hex0 <= 0 ;
             valid <= 0 ;
             step <= set ;
             end
       endcase
      end
      end
  endcase 
 end 
end
endmodule
module debounce (clk, rst, key_in, key_out) ;
input clk,rst,key_in ;
output reg key_out ;
reg [25:0] count ;
always @ (posedge clk , negedge rst) begin
    if (!rst) begin
        count <= 0 ;
        key_out <= 1 ;
    end
    else begin
        if (count >= 5000000) begin
            count <= 0 ;
            key_out <= key_in ;
        end
        else if (key_out^key_in)
            count <= count + 1 ;
        else
            count <= 0 ;
    end
end
endmodule

module fqdiv(in,out);
input in;
output reg out;
integer count = 0;
always@(posedge in)begin
	if(count==50000)begin
		count <= 1;
		out <= ~out;
	end
	else begin
		count <=count + 1;
	end
end
endmodule
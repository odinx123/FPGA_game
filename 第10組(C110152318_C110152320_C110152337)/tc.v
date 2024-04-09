module tc(second,hex3,hex2,hex1,hex0);
input [15:0]second;
output [6:0]hex3,hex2,hex1,hex0;
reg [15:0] tc;
integer i;

reg [15:0]BCD;
assign hex3 = BCD[15:12];
assign hex2 = BCD[11:8];
assign hex1 = BCD[7:4];
assign hex0 = BCD[3:0];

always @(*) begin
	tc = second;
	for (i = 0; i < 16; i=i+1) begin
		if (BCD[3:0] >= 4'h5) begin
			BCD[15:0] = BCD[15:0] + 4'h3;
		end
		if (BCD[7:4] >= 4'h5) begin
			BCD[15:0] = BCD[15:0] + 8'h30;
		end
		if (BCD[11:8] >= 4'h5) begin
			BCD[15:0] = BCD[15:0] + 12'h300;
		end
		BCD[15:0] = (BCD[15:0] << 1) | tc[15];
		tc = second << 1;
	end
end
endmodule
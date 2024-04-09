`include "IR_receive.v"
`include "fqdiv.v"
module VGA(SW, clk, VGA_HS, VGA_VS ,VGA_R, VGA_G, VGA_B,VGA_BLANK_N,VGA_CLOCK,KEY3,KEY2,KEY1,KEY0,IRDA_RXD,LEDR,HEX3,HEX2,HEX1,HEX0);

output [6:0]HEX3,HEX2,HEX1,HEX0;
input IRDA_RXD;
input KEY3,KEY2,KEY1,KEY0;
input [17:0]SW;
wire rst = !SW[17];
input clk;		//clk 50MHz
output VGA_HS, VGA_VS;
output reg [7:0] VGA_R,VGA_G,VGA_B;
output VGA_BLANK_N,VGA_CLOCK;
output reg [17:0]LEDR;

reg VGA_HS, VGA_VS;
reg[10:0] counterHS;
reg[9:0] counterVS;
reg [2:0] valid;
reg clk25M;

reg [12:0] X,Y;

parameter H_FRONT = 16;
parameter H_SYNC  = 96;
parameter H_BACK  = 48;
parameter H_ACT   = 640;//
parameter H_BLANK = H_FRONT + H_SYNC + H_BACK;
parameter H_TOTAL = H_FRONT + H_SYNC + H_BACK + H_ACT;

parameter V_FRONT = 11;
parameter V_SYNC  = 2;
parameter V_BACK  = 32;
parameter V_ACT   = 480;//
parameter V_BLANK = V_FRONT + V_SYNC + V_BACK;
parameter V_TOTAL = V_FRONT + V_SYNC + V_BACK + V_ACT;
assign VGA_SYNC_N = 1'b0;
assign VGA_BLANK_N = ~((counterHS<H_BLANK)||(counterVS<V_BLANK));
assign VGA_CLOCK = ~clk25M;

wire steve_move_up,steve_move_down,steve_move_left,steve_move_right;
debounce (.clk(clk), .rst(rst), .key_in(KEY3), .key_out(steve_move_up));
debounce (.clk(clk), .rst(rst), .key_in(KEY2), .key_out(steve_move_down));
debounce (.clk(clk), .rst(rst), .key_in(KEY1), .key_out(steve_move_left));
debounce (.clk(clk), .rst(rst), .key_in(KEY0), .key_out(steve_move_right));
wire clk1hz;
fqdiv fq1(clk,clk1hz);

wire clk_1;	//clock for steve moving
mul_clk u_clk_1 (.clk_in(clk),.mul(500000),.clk_out(clk_1));
wire clk_1HZ;
mul_clk u_clk_2 (.clk_in(clk),.mul(25000000),.clk_out(clk_1HZ));
always@(posedge clk)
	clk25M = ~clk25M;

wire [7:0]map_RGB_R,map_RGB_G,map_RGB_B;
wire [7:0]steve_RGB_R,steve_RGB_G,steve_RGB_B;
wire [7:0]creeper_RGB_R,creeper_RGB_G,creeper_RGB_B;
steve u_steve (.clk(clk), .rst(rst), .X(X-steve_x), .Y(Y-steve_y), .mapR(steve_RGB_R), .mapG(steve_RGB_G), .mapB(steve_RGB_B));
creeper u_creeper (.clk(clk), .rst(rst), .X(X-creeper_x), .Y(Y-creeper_y), .mapR(creeper_RGB_R), .mapG(creeper_RGB_G), .mapB(creeper_RGB_B));

reg[9:0]steve_x,steve_x_last;
reg[8:0]steve_y,steve_y_last;
reg[9:0]creeper_x,creeper_x_last;
reg[8:0]creeper_y,creeper_y_last;
reg[1:0]state,next_state;

wire is_wall_1, is_wall_2, is_wall_3, is_wall_4, is_wall_5, is_wall_6, is_wall_7, is_wall_8, is_wall_9, is_wall_10, is_wall_11, is_wall_12, is_wall_13, is_wall_14, is_wall_15, is_wall_16;
showMap u_map (.clk(clk), .rst(rst), .X(X/10), .Y(Y/10), .mapR(map_RGB_R), .mapG(map_RGB_G), .mapB(map_RGB_B));

wire [7:0]menu_RGB_R,menu_RGB_G,menu_RGB_B;

//menu_img u_menu_img(.clk(clk), .rst(rst), .X(X/4), .Y(Y/4), .mapR(menu_RGB_R), .mapG(menu_RGB_G), .mapB(menu_RGB_B));

//condition: whether steve hit the wall or not
wall u_is_wall_1 (.clk(clk), .rst(rst), .X(steve_x/10), .Y(steve_y/10), .is_wall(is_wall_1) );
wall u_is_wall_2 (.clk(clk), .rst(rst), .X(steve_x/10), .Y((steve_y+9)/10), .is_wall(is_wall_2) );
wall u_is_wall_3 (.clk(clk), .rst(rst), .X(steve_x/10), .Y((steve_y+19)/10), .is_wall(is_wall_3) );
wall u_is_wall_4 (.clk(clk), .rst(rst), .X((steve_x+9)/10), .Y((steve_y)/10), .is_wall(is_wall_4) );
wall u_is_wall_5 (.clk(clk), .rst(rst), .X((steve_x+9)/10), .Y((steve_y+19)/10), .is_wall(is_wall_5) );
wall u_is_wall_6 (.clk(clk), .rst(rst), .X((steve_x+19)/10), .Y((steve_y)/10), .is_wall(is_wall_6) );
wall u_is_wall_7 (.clk(clk), .rst(rst), .X((steve_x+19)/10), .Y((steve_y+9)/10), .is_wall(is_wall_7) );
wall u_is_wall_8 (.clk(clk), .rst(rst), .X((steve_x+19)/10), .Y((steve_y+19)/10), .is_wall(is_wall_8) );
wire steve_is_in_wall = !is_wall_1 | !is_wall_2 | !is_wall_3 | !is_wall_4 | !is_wall_5 | !is_wall_6 | !is_wall_7 | !is_wall_8;

//condition: whether creeper hit the wall or not
wall u_is_wall_9 (.clk(clk), .rst(rst), .X(steve_x/10), .Y(creeper_y/10), .is_wall(is_wall_9) );
wall u_is_wall_10 (.clk(clk), .rst(rst), .X(creeper_x/10), .Y((creeper_y+9)/10), .is_wall(is_wall_10) );
wall u_is_wall_11 (.clk(clk), .rst(rst), .X(creeper_x/10), .Y((creeper_y+19)/10), .is_wall(is_wall_11) );
wall u_is_wall_12 (.clk(clk), .rst(rst), .X((creeper_x+9)/10), .Y((creeper_y)/10), .is_wall(is_wall_12) );
wall u_is_wall_13 (.clk(clk), .rst(rst), .X((creeper_x+9)/10), .Y((creeper_y+19)/10), .is_wall(is_wall_13) );
wall u_is_wall_14 (.clk(clk), .rst(rst), .X((creeper_x+19)/10), .Y((creeper_y)/10), .is_wall(is_wall_14) );
wall u_is_wall_15 (.clk(clk), .rst(rst), .X((creeper_x+19)/10), .Y((creeper_y+9)/10), .is_wall(is_wall_15) );
wall u_is_wall_16 (.clk(clk), .rst(rst), .X((creeper_x+19)/10), .Y((creeper_y+19)/10), .is_wall(is_wall_16) );
wire creeper_is_in_wall = !is_wall_9 | !is_wall_10 | !is_wall_11 | !is_wall_12 | !is_wall_13 | !is_wall_14 | !is_wall_15 | !is_wall_16;

parameter stage_setting	=	0;
parameter stage_init	=	1;
parameter stage_playing	= 2;
parameter stage_end	=	3;

wire is_stage_playing = (state == is_stage_playing) ? 1:0;

reg [6:0]timer;
wire [15:0]BCD;
bin2bcd(.bin(timer),.bcd(BCD));
hex_decoder u_hex_decoder_1 (BCD[15:12],HEX3);
hex_decoder u_hex_decoder_2 (BCD[11:8],HEX2);
hex_decoder u_hex_decoder_3 (BCD[7:4],HEX1);
hex_decoder u_hex_decoder_4 (BCD[3:0],HEX0);
always@(posedge clk_1HZ)begin
	if(!rst)begin
		timer <= 1;
		LEDR <= 17'b10101010101010101;
	end
	else begin
		case(state)
			stage_setting:begin
				timer <= 15 * (SW[1:0] + 1);
			end
			stage_playing:begin
				timer <= timer - 1;
			end
			stage_end:begin
				LEDR <= ~LEDR;
			end
		endcase
	end
end

wire win_creeper = player_collision;
wire win_steve = (timer == 0)? 1:0;

always@(posedge clk)begin	//next_state
	case(state)
		stage_setting:begin
			if(ir_data[23:16] == 8'h16)	next_state <= stage_init;
		end
		stage_init:begin
			next_state <= stage_playing;
		end
		stage_playing:begin
			if(win_creeper || win_steve)begin
				next_state <= stage_end;
			end
		end
		stage_end:begin
			if(ir_data[23:16] == 8'h14)	next_state <= stage_setting;
		end
	endcase
	//LEDR <= timer;
end

always@(posedge clk)begin
	if(!rst)begin
		state <= stage_setting;
	end
	else begin
		state <= next_state;
	end
end

parameter steve_move_speed = 2;	//steve control
always@(posedge clk_1)begin
	if(!rst || state == stage_setting)begin
		steve_x <= H_ACT/2-10;
		steve_y <= 50; 
		steve_x_last <= H_ACT/2-10;
		steve_y_last <= 50; 
	end
	
	if(steve_is_in_wall)begin
		steve_x <= steve_x_last;
		steve_y <= steve_y_last;
	end
	else begin
		steve_x_last <= steve_x;
		steve_y_last <= steve_y;
	end
	
	if(state == stage_playing && !steve_is_in_wall)begin
		if(!steve_move_up)begin
			steve_y <= steve_y - steve_move_speed;
		end
		else if(!steve_move_down)begin
			steve_y <= steve_y + steve_move_speed;
		end
		else if(!steve_move_left)begin
			steve_x <= steve_x - steve_move_speed;
		end
		else if(!steve_move_right)begin
			steve_x <= steve_x + steve_move_speed;
		end
	end
end

wire ir_ready;
wire [31:0]ir_data;
IR_receive(.iCLK(clk),.iRST_n(rst),.iIRDA(IRDA_RXD),.oDATA(ir_data),.oDATA_READY(ir_ready));

parameter creeper_move_spped = 3;
always@(posedge clk_1)begin	//creeper control
	if(!rst || state == stage_setting)begin
		creeper_x <= H_ACT/2-10;
		creeper_y <= V_ACT - 50; 
		creeper_x_last <= H_ACT/2-10;
		creeper_y_last <= V_ACT - 50;
	end
	
	if(creeper_is_in_wall)begin
		creeper_x <= creeper_x_last;
		creeper_y <= creeper_y_last;
	end
	else begin
		creeper_x_last <= creeper_x;
		creeper_y_last <= creeper_y;
	end
	
	if(state == stage_playing && !creeper_is_in_wall)begin
		case(ir_data[23:16])
			8'h02:begin
				creeper_y <= creeper_y - creeper_move_spped;
			end
			8'h04:begin
				creeper_x <= creeper_x - creeper_move_spped;
			end
			8'h06:begin
				creeper_x <= creeper_x + creeper_move_spped;
			end
			8'h08:begin
				creeper_y <= creeper_y + creeper_move_spped;
			end
			8'h05:begin end
		endcase
	end
end

always@(posedge clk25M)
begin
	if(!rst) 
		counterHS <= 0;
	else begin
	
		if(counterHS == H_TOTAL) 
			counterHS <= 0;
		else 
			counterHS <= counterHS + 1'b1;
		
		if(counterHS == H_FRONT-1)
			VGA_HS <= 1'b0;
		if(counterHS == H_FRONT + H_SYNC -1)
			VGA_HS <= 1'b1;
			
		if(counterHS >= H_BLANK)
			X <= counterHS-H_BLANK;
		else
			X <= 0;	
	end
end

always@(posedge clk25M)
begin
	if(!rst) 
		counterVS <= 0;
	else begin
	
		if(counterVS == V_TOTAL) 
			counterVS <= 0;
		else if(counterHS == H_TOTAL) 
			counterVS <= counterVS + 1'b1;
			
		if(counterVS == V_FRONT-1)
			VGA_VS <= 1'b0;
		if(counterVS == V_FRONT + V_SYNC -1)
			VGA_VS <= 1'b1;
		if(counterVS >= V_BLANK)
			Y <= counterVS-V_BLANK;
		else
			Y <= 0;
	end
end

reg [23:0]color[3:0];

wire steve_judge = (X >= steve_x && X < steve_x+20 && Y < steve_y+20 && steve_y <= Y);
wire creeper_judge = (X >= creeper_x && X < creeper_x+20 && Y < creeper_y+20 && creeper_y <= Y);
wire player_collision = steve_judge && creeper_judge;


always@(posedge clk25M) begin	//print
	if (!rst) begin
		//{VGA_R,VGA_G,VGA_B}<= {menu_RGB_R,menu_RGB_G,menu_RGB_B};
		{VGA_R,VGA_G,VGA_B}<= 24'h00ffff;
	end
	else begin
		case(state)
			stage_playing:begin	//playing screen
				if(player_collision)begin
					{VGA_R,VGA_G,VGA_B} <= 24'h8f0000;
				end
				else if(creeper_judge && !win_steve)begin
					{VGA_R,VGA_G,VGA_B} <= {creeper_RGB_R,creeper_RGB_G,creeper_RGB_B};
				end
				else if(steve_judge && !win_creeper)begin
					{VGA_R,VGA_G,VGA_B} <= {steve_RGB_R,steve_RGB_G,steve_RGB_B};
				end
				else begin
					{VGA_R,VGA_G,VGA_B} <= {map_RGB_R,map_RGB_G,map_RGB_B};
				end
			end
			stage_setting:begin
				{VGA_R,VGA_G,VGA_B} <= 24'h00ffff;	//menu screen
			end
			stage_end:begin
				if(win_steve) {VGA_R,VGA_G,VGA_B} <= 24'h00ff00;	//steve win screen
				else if(win_creeper) {VGA_R,VGA_G,VGA_B} <= 24'hff0000;							//creeper win screen
			end
			stage_init:begin	//shouldnt be seem
				{VGA_R,VGA_G,VGA_B} <= 24'h000000;
			end
		endcase
		/*
		else if (!is_wall)begin
			{VGA_R,VGA_G,VGA_B} <= 24'h00ffff;//{map_RGB_R,map_RGB_G,map_RGB_B};
		end
		else begin
			{VGA_R,VGA_G,VGA_B} <= 24'h0f0f0f;
		end
		*/
	end
end

/*
wing u_wing (.clk(clk), .rst(rst), .X(X/10), .Y(Y/10), .mapR(wing_RGB_R), .mapG(wing_RGB_G), .mapB(wing_RGB_B));
wire [7:0]wing_RGB_R,wing_RGB_G,wing_RGB_B;
*/
always@(posedge clk,negedge rst)begin
	if(!rst)begin
		color[0]<=24'h0000ff;//
		color[1]<=24'h00ff00;//
		color[2]<=24'hff0000;//
		color[3]<=24'h00ffff;//
	end
end

endmodule
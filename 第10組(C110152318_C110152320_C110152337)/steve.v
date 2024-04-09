module steve(clk, rst, X, Y, mapR, mapG, mapB);

	parameter xbit = 10, ybit = 9;
	input clk, rst;
	input [xbit-1:0] X;
	input [ybit-1:0] Y;
	output [7:0] mapR, mapG, mapB;
	reg [7:0] mapR, mapG, mapB;

	always @(posedge clk) begin
		if(!rst) begin
			mapR <= 8'd255;
			mapG <= 8'd255;
			mapB <= 8'd255;
		end
		else begin
			case(Y)
				`ybit'd0: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd54, 8'd39, 8'd21};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd14};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd15};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd12};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd12};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd15};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd49, 8'd33, 8'd16};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd39, 8'd31, 8'd11};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd36, 8'd27, 8'd8};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd36, 8'd28, 8'd9};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd33, 8'd24, 8'd8};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd34, 8'd25, 8'd8};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd35, 8'd25, 8'd10};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd37, 8'd28, 8'd12};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd40, 8'd27, 8'd12};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd16};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd14};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd14};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd14};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd14};
					endcase
				end
				`ybit'd1: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd42, 8'd26, 8'd10};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd49, 8'd33, 8'd18};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd14};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd46, 8'd30, 8'd15};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd44, 8'd28, 8'd13};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd43, 8'd28, 8'd13};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd41, 8'd23, 8'd9};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd41, 8'd23, 8'd9};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd42, 8'd24, 8'd10};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd43, 8'd25, 8'd11};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd42, 8'd26, 8'd11};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd15};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd41, 8'd28, 8'd13};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd15};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
					endcase
				end
				`ybit'd2: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd46, 8'd30, 8'd14};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd46, 8'd30, 8'd15};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd14};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd17};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd47, 8'd31, 8'd16};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd45, 8'd32, 8'd16};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd46, 8'd28, 8'd10};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd44, 8'd26, 8'd7};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd46, 8'd28, 8'd11};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd47, 8'd28, 8'd14};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd14};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd45, 8'd29, 8'd14};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd42, 8'd30, 8'd14};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd42, 8'd29, 8'd13};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd42, 8'd29, 8'd13};
					endcase
				end
				`ybit'd3: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd39, 8'd26, 8'd9};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd43, 8'd30, 8'd14};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd49, 8'd34, 8'd15};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd52, 8'd37, 8'd18};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd52, 8'd37, 8'd18};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd67, 8'd43, 8'd19};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd67, 8'd42, 8'd20};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd67, 8'd42, 8'd20};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd67, 8'd41, 8'd24};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd64, 8'd43, 8'd22};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd45, 8'd31, 8'd16};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd44, 8'd31, 8'd15};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd43, 8'd29, 8'd13};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd42, 8'd29, 8'd13};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd42, 8'd29, 8'd13};
					endcase
				end
				`ybit'd4: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd39, 8'd26, 8'd9};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd42, 8'd30, 8'd14};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd46, 8'd29, 8'd16};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd40, 8'd32, 8'd12};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd42, 8'd30, 8'd13};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd44, 8'd31, 8'd14};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd44, 8'd31, 8'd14};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd48, 8'd35, 8'd19};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd50, 8'd38, 8'd21};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd50, 8'd38, 8'd21};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd66, 8'd47, 8'd22};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd66, 8'd46, 8'd21};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd67, 8'd48, 8'd22};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd63, 8'd43, 8'd24};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd63, 8'd43, 8'd22};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd45, 8'd35, 8'd22};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd45, 8'd33, 8'd19};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd41, 8'd28, 8'd14};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd44, 8'd29, 8'd11};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd44, 8'd29, 8'd10};
					endcase
				end
				`ybit'd5: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd39, 8'd26, 8'd9};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd46, 8'd29, 8'd7};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd96, 8'd65, 8'd40};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd182, 8'd140, 8'd109};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd183, 8'd139, 8'd109};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd189, 8'd145, 8'd115};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd187, 8'd144, 8'd114};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd189, 8'd145, 8'd119};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd199, 8'd154, 8'd130};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd199, 8'd154, 8'd131};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd186, 8'd139, 8'd115};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd191, 8'd143, 8'd119};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd190, 8'd142, 8'd118};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd192, 8'd144, 8'd120};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd189, 8'd147, 8'd122};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd175, 8'd122, 8'd90};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd174, 8'd122, 8'd93};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd118, 8'd84, 8'd57};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd54, 8'd37, 8'd19};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd53, 8'd38, 8'd19};
					endcase
				end
				`ybit'd6: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd39, 8'd26, 8'd9};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd42, 8'd31, 8'd12};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd90, 8'd66, 8'd44};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd184, 8'd137, 8'd109};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd184, 8'd137, 8'd109};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd190, 8'd143, 8'd115};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd189, 8'd142, 8'd114};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd194, 8'd147, 8'd121};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd198, 8'd150, 8'd130};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd198, 8'd150, 8'd128};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd189, 8'd135, 8'd111};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd193, 8'd139, 8'd115};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd188, 8'd142, 8'd116};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd190, 8'd143, 8'd117};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd189, 8'd143, 8'd117};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd172, 8'd118, 8'd94};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd173, 8'd119, 8'd93};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd119, 8'd84, 8'd61};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd54, 8'd38, 8'd21};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd54, 8'd39, 8'd20};
					endcase
				end
				`ybit'd7: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd90, 8'd62, 8'd44};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd95, 8'd61, 8'd50};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd118, 8'd81, 8'd56};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd182, 8'd135, 8'd107};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd182, 8'd135, 8'd107};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd186, 8'd139, 8'd111};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd185, 8'd141, 8'd114};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd186, 8'd142, 8'd116};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd190, 8'd145, 8'd124};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd190, 8'd145, 8'd122};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd178, 8'd133, 8'd110};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd181, 8'd131, 8'd106};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd183, 8'd133, 8'd108};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd188, 8'd141, 8'd115};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd190, 8'd140, 8'd115};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd167, 8'd117, 8'd92};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd171, 8'd117, 8'd91};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd128, 8'd92, 8'd59};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd96, 8'd60, 8'd40};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd93, 8'd62, 8'd39};
					endcase
				end
				`ybit'd8: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd171, 8'd128, 8'd108};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd167, 8'd127, 8'd101};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd175, 8'd127, 8'd106};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd180, 8'd132, 8'd110};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd180, 8'd132, 8'd110};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd171, 8'd125, 8'd102};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd170, 8'd125, 8'd104};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd172, 8'd127, 8'd106};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd175, 8'd129, 8'd114};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd175, 8'd129, 8'd113};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd161, 8'd115, 8'd99};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd156, 8'd113, 8'd94};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd168, 8'd123, 8'd101};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd192, 8'd138, 8'd114};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd189, 8'd138, 8'd115};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd156, 8'd104, 8'd82};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd157, 8'd106, 8'd79};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd160, 8'd103, 8'd82};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd154, 8'd107, 8'd80};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd156, 8'd106, 8'd81};
					endcase
				end
				`ybit'd9: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd171, 8'd126, 8'd103};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd170, 8'd125, 8'd103};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd174, 8'd128, 8'd106};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd183, 8'd132, 8'd111};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd182, 8'd131, 8'd110};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd169, 8'd125, 8'd102};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd170, 8'd125, 8'd101};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd172, 8'd127, 8'd104};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd173, 8'd127, 8'd111};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd173, 8'd127, 8'd111};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd161, 8'd115, 8'd99};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd155, 8'd114, 8'd96};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd170, 8'd122, 8'd98};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd192, 8'd138, 8'd114};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd190, 8'd136, 8'd110};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd158, 8'd104, 8'd78};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd161, 8'd106, 8'd75};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd159, 8'd106, 8'd74};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd158, 8'd105, 8'd74};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd158, 8'd105, 8'd74};
					endcase
				end
				`ybit'd10: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd183, 8'd135, 8'd111};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd183, 8'd133, 8'd106};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd200, 8'd169, 8'd156};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd254, 8'd253, 8'd254};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd255, 8'd252, 8'd255};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd30, 8'd28, 8'd161};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd35, 8'd39, 8'd163};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd97, 8'd65, 8'd129};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd174, 8'd128, 8'd96};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd180, 8'd123, 8'd104};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd190, 8'd139, 8'd118};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd181, 8'd139, 8'd115};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd143, 8'd106, 8'd158};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd31, 8'd33, 8'd171};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd32, 8'd35, 8'd171};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd245, 8'd254, 8'd254};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd253, 8'd253, 8'd253};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd218, 8'd199, 8'd189};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd171, 8'd127, 8'd104};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd172, 8'd127, 8'd104};
					endcase
				end
				`ybit'd11: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd182, 8'd134, 8'd114};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd179, 8'd134, 8'd104};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd200, 8'd169, 8'd146};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd255, 8'd254, 8'd255};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd255, 8'd255, 8'd244};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd34, 8'd37, 8'd169};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd37, 8'd35, 8'd171};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd106, 8'd65, 8'd152};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd173, 8'd127, 8'd103};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd180, 8'd122, 8'd107};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd186, 8'd136, 8'd118};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd189, 8'd139, 8'd116};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd144, 8'd118, 8'd164};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd33, 8'd38, 8'd168};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd39, 8'd34, 8'd163};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd255, 8'd252, 8'd239};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd255, 8'd255, 8'd255};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd219, 8'd201, 8'd188};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd167, 8'd126, 8'd107};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd170, 8'd125, 8'd106};
					endcase
				end
				`ybit'd12: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd173, 8'd121, 8'd94};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd181, 8'd121, 8'd97};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd197, 8'd149, 8'd123};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd244, 8'd221, 8'd209};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd243, 8'd221, 8'd216};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd100, 8'd66, 8'd137};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd95, 8'd79, 8'd134};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd135, 8'd86, 8'd119};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd156, 8'd109, 8'd89};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd156, 8'd109, 8'd93};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd168, 8'd121, 8'd105};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd167, 8'd119, 8'd117};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd143, 8'd104, 8'd113};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd102, 8'd76, 8'd128};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd96, 8'd76, 8'd134};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd228, 8'd214, 8'd208};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd242, 8'd217, 8'd202};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd212, 8'd168, 8'd150};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd162, 8'd119, 8'd89};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd163, 8'd119, 8'd92};
					endcase
				end
				`ybit'd13: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd163, 8'd98, 8'd70};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd156, 8'd99, 8'd70};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd161, 8'd106, 8'd76};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd179, 8'd123, 8'd98};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd179, 8'd123, 8'd96};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd187, 8'd129, 8'd117};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd186, 8'd130, 8'd117};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd164, 8'd117, 8'd101};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd110, 8'd64, 8'd51};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd108, 8'd65, 8'd49};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd108, 8'd65, 8'd49};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd110, 8'd64, 8'd49};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd138, 8'd89, 8'd66};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd192, 8'd138, 8'd112};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd190, 8'd139, 8'd112};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd165, 8'd106, 8'd74};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd164, 8'd105, 8'd71};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd150, 8'd98, 8'd66};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd130, 8'd83, 8'd55};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd83, 8'd55};
					endcase
				end
				`ybit'd14: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd157, 8'd101, 8'd70};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd155, 8'd100, 8'd70};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd161, 8'd106, 8'd76};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd179, 8'd123, 8'd98};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd179, 8'd123, 8'd96};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd184, 8'd130, 8'd117};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd187, 8'd131, 8'd118};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd166, 8'd116, 8'd101};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd108, 8'd65, 8'd48};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd107, 8'd65, 8'd49};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd107, 8'd65, 8'd49};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd111, 8'd62, 8'd56};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd136, 8'd90, 8'd65};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd192, 8'd138, 8'd110};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd194, 8'd136, 8'd114};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd162, 8'd108, 8'd70};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd164, 8'd105, 8'd71};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd148, 8'd99, 8'd67};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd128, 8'd83, 8'd58};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd83, 8'd57};
					endcase
				end
				`ybit'd15: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd143, 8'd93, 8'd68};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd142, 8'd95, 8'd64};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd145, 8'd98, 8'd66};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd150, 8'd96, 8'd62};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd151, 8'd94, 8'd67};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd61, 8'd29, 8'd9};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd66, 8'd33, 8'd12};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd88, 8'd45, 8'd28};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd140, 8'd76, 8'd63};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd140, 8'd77, 8'd60};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd140, 8'd77, 8'd60};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd140, 8'd77, 8'd62};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd118, 8'd69, 8'd55};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd66, 8'd33, 8'd14};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd67, 8'd33, 8'd11};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd142, 8'd89, 8'd57};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd147, 8'd96, 8'd66};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd141, 8'd92, 8'd60};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd129, 8'd83, 8'd58};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd83, 8'd57};
					endcase
				end
				`ybit'd16: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd146, 8'd95, 8'd68};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd147, 8'd93, 8'd72};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd148, 8'd95, 8'd64};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd150, 8'd95, 8'd64};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd151, 8'd94, 8'd64};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd61, 8'd32, 8'd8};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd66, 8'd34, 8'd13};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd90, 8'd45, 8'd29};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd138, 8'd76, 8'd65};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd139, 8'd75, 8'd65};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd139, 8'd75, 8'd65};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd138, 8'd76, 8'd65};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd113, 8'd65, 8'd50};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd69, 8'd34, 8'd14};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd144, 8'd96, 8'd64};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd147, 8'd94, 8'd63};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd141, 8'd91, 8'd64};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd129, 8'd83, 8'd59};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd83, 8'd57};
					endcase
				end
				`ybit'd17: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd127, 8'd83, 8'd55};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd131, 8'd86, 8'd57};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd131, 8'd85, 8'd57};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd134, 8'd84, 8'd58};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd137, 8'd83, 8'd55};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd68, 8'd36, 8'd15};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd66, 8'd34, 8'd13};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd81, 8'd40, 8'd22};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd106, 8'd58, 8'd41};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd108, 8'd58, 8'd39};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd106, 8'd59, 8'd38};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd111, 8'd55, 8'd42};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd99, 8'd59, 8'd41};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd69, 8'd34, 8'd16};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd138, 8'd88, 8'd61};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd142, 8'd92, 8'd65};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd135, 8'd88, 8'd62};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd125, 8'd79, 8'd53};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd124, 8'd80, 8'd53};
					endcase
				end
				`ybit'd18: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd108, 8'd68, 8'd46};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd110, 8'd70, 8'd45};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd110, 8'd68, 8'd44};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd110, 8'd67, 8'd41};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd108, 8'd67, 8'd42};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd70, 8'd33, 8'd17};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd66, 8'd34, 8'd13};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd67, 8'd31, 8'd11};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd66, 8'd29, 8'd10};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd66, 8'd29, 8'd11};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd70, 8'd34, 8'd16};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd70, 8'd36, 8'd16};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd69, 8'd34, 8'd15};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd134, 8'd84, 8'd60};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd132, 8'd86, 8'd61};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd130, 8'd84, 8'd58};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd123, 8'd79, 8'd52};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd123, 8'd79, 8'd52};
					endcase
				end
				`ybit'd19: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd110, 8'd68, 8'd45};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd111, 8'd69, 8'd44};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd110, 8'd68, 8'd44};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd109, 8'd67, 8'd43};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd109, 8'd67, 8'd42};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd69, 8'd34, 8'd14};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd66, 8'd34, 8'd13};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd64, 8'd32, 8'd11};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd67, 8'd29, 8'd10};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd66, 8'd29, 8'd10};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd71, 8'd33, 8'd15};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd72, 8'd35, 8'd16};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd69, 8'd34, 8'd14};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd135, 8'd85, 8'd62};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd133, 8'd86, 8'd60};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd129, 8'd85, 8'd58};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd123, 8'd79, 8'd52};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd123, 8'd79, 8'd52};
					endcase
				end
			endcase
		end
	end

endmodule
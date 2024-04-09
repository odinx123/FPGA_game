module creeper(clk, rst, X, Y, mapR, mapG, mapB);

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
						`xbit'd0: {mapR, mapG, mapB} <= {8'd23, 8'd154, 8'd12};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd30, 8'd153, 8'd10};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd140, 8'd206, 8'd136};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd146, 8'd205, 8'd137};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd18, 8'd151, 8'd8};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd20, 8'd153, 8'd10};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd73, 8'd172, 8'd55};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd71, 8'd174, 8'd57};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd145, 8'd198, 8'd138};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd140, 8'd198, 8'd137};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd191, 8'd215, 8'd183};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd187, 8'd213, 8'd186};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd116, 8'd217, 8'd97};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd119, 8'd215, 8'd105};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd117, 8'd202, 8'd99};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd114, 8'd199, 8'd96};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd64, 8'd144, 8'd57};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd64, 8'd144, 8'd55};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd145, 8'd204, 8'd135};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd143, 8'd204, 8'd134};
					endcase
				end
				`ybit'd1: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd19, 8'd155, 8'd9};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd26, 8'd152, 8'd11};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd138, 8'd207, 8'd133};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd143, 8'd204, 8'd134};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd17, 8'd154, 8'd6};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd16, 8'd154, 8'd6};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd69, 8'd174, 8'd54};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd69, 8'd174, 8'd56};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd142, 8'd199, 8'd133};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd143, 8'd195, 8'd141};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd190, 8'd214, 8'd186};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd185, 8'd218, 8'd187};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd117, 8'd216, 8'd100};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd120, 8'd214, 8'd103};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd110, 8'd199, 8'd98};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd107, 8'd196, 8'd96};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd58, 8'd146, 8'd50};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd61, 8'd144, 8'd57};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd144, 8'd205, 8'd135};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd142, 8'd202, 8'd132};
					endcase
				end
				`ybit'd2: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd91, 8'd191, 8'd78};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd89, 8'd193, 8'd78};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd38, 8'd137, 8'd28};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd34, 8'd140, 8'd27};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd90, 8'd190, 8'd78};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd90, 8'd190, 8'd78};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd64, 8'd173, 8'd48};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd60, 8'd172, 8'd46};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd100, 8'd192, 8'd83};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd104, 8'd195, 8'd89};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd65, 8'd142, 8'd57};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd66, 8'd144, 8'd51};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd100, 8'd212, 8'd88};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd108, 8'd212, 8'd89};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd89, 8'd181, 8'd72};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd91, 8'd183, 8'd74};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd187, 8'd220, 8'd183};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd188, 8'd219, 8'd188};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd36, 8'd138, 8'd26};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd39, 8'd136, 8'd30};
					endcase
				end
				`ybit'd3: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd88, 8'd190, 8'd81};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd88, 8'd191, 8'd90};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd40, 8'd138, 8'd33};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd46, 8'd136, 8'd38};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd95, 8'd187, 8'd86};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd95, 8'd187, 8'd86};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd71, 8'd168, 8'd53};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd63, 8'd176, 8'd42};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd103, 8'd199, 8'd92};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd107, 8'd196, 8'd90};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd65, 8'd145, 8'd56};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd66, 8'd141, 8'd56};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd100, 8'd213, 8'd79};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd113, 8'd206, 8'd99};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd85, 8'd183, 8'd80};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd85, 8'd183, 8'd80};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd184, 8'd221, 8'd189};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd188, 8'd219, 8'd188};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd36, 8'd140, 8'd24};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd42, 8'd138, 8'd31};
					endcase
				end
				`ybit'd4: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd135, 8'd215, 8'd128};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd138, 8'd212, 8'd126};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd63, 8'd185, 8'd51};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd71, 8'd179, 8'd59};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd139, 8'd212, 8'd132};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd138, 8'd213, 8'd128};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd70, 8'd152, 8'd68};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd68, 8'd153, 8'd62};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd5};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd198, 8'd225, 8'd194};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd194, 8'd226, 8'd195};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd67, 8'd179, 8'd46};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd64, 8'd183, 8'd53};
					endcase
				end
				`ybit'd5: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd139, 8'd213, 8'd128};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd139, 8'd212, 8'd127};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd63, 8'd184, 8'd51};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd72, 8'd180, 8'd60};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd138, 8'd211, 8'd131};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd136, 8'd211, 8'd126};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd70, 8'd152, 8'd68};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd68, 8'd153, 8'd62};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd5};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd198, 8'd225, 8'd194};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd194, 8'd226, 8'd194};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd69, 8'd180, 8'd47};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd64, 8'd183, 8'd53};
					endcase
				end
				`ybit'd6: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd97, 8'd192, 8'd76};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd97, 8'd193, 8'd83};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd72, 8'd195, 8'd60};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd75, 8'd194, 8'd66};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd0, 8'd3, 8'd0};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd102, 8'd193, 8'd89};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd97, 8'd194, 8'd81};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd63, 8'd174, 8'd45};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd65, 8'd170, 8'd60};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd6, 8'd0, 8'd0};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd106, 8'd203, 8'd88};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd106, 8'd204, 8'd94};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd72, 8'd196, 8'd62};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd74, 8'd199, 8'd59};
					endcase
				end
				`ybit'd7: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd97, 8'd195, 8'd81};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd91, 8'd195, 8'd76};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd73, 8'd196, 8'd55};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd68, 8'd200, 8'd53};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd0, 8'd3, 8'd0};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd3};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd95, 8'd196, 8'd71};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd98, 8'd194, 8'd84};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd69, 8'd171, 8'd51};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd62, 8'd173, 8'd45};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd7, 8'd0, 8'd9};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd3};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd3};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd4};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd111, 8'd202, 8'd89};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd113, 8'd200, 8'd93};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd74, 8'd196, 8'd58};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd75, 8'd198, 8'd61};
					endcase
				end
				`ybit'd8: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd87, 8'd178, 8'd73};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd96, 8'd182, 8'd83};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd129, 8'd209, 8'd118};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd131, 8'd203, 8'd120};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd93, 8'd175, 8'd81};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd92, 8'd174, 8'd82};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd140, 8'd207, 8'd127};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd133, 8'd213, 8'd123};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd3, 8'd1, 8'd9};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd0, 8'd4, 8'd0};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd0, 8'd3, 8'd0};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd11, 8'd1, 8'd12};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd171, 8'd222, 8'd161};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd170, 8'd218, 8'd166};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd58, 8'd146, 8'd51};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd55, 8'd144, 8'd46};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd89, 8'd201, 8'd72};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd87, 8'd203, 8'd69};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd130, 8'd203, 8'd117};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd204, 8'd117};
					endcase
				end
				`ybit'd9: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd85, 8'd173, 8'd72};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd90, 8'd176, 8'd78};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd130, 8'd207, 8'd118};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd128, 8'd209, 8'd116};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd88, 8'd176, 8'd74};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd87, 8'd174, 8'd80};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd136, 8'd205, 8'd125};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd135, 8'd208, 8'd136};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd2, 8'd1, 8'd0};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd7, 8'd1, 8'd3};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd173, 8'd215, 8'd166};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd173, 8'd214, 8'd168};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd64, 8'd139, 8'd57};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd64, 8'd140, 8'd50};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd84, 8'd205, 8'd66};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd86, 8'd203, 8'd70};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd128, 8'd204, 8'd115};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd130, 8'd206, 8'd118};
					endcase
				end
				`ybit'd10: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd70, 8'd144, 8'd61};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd72, 8'd147, 8'd66};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd143, 8'd210, 8'd133};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd142, 8'd210, 8'd133};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd69, 8'd142, 8'd61};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd69, 8'd142, 8'd61};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd1, 8'd2, 8'd2};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd2, 8'd2, 8'd2};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd4, 8'd4, 8'd4};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd4, 8'd4, 8'd4};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd0, 8'd5, 8'd1};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd99, 8'd203, 8'd81};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd93, 8'd205, 8'd81};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd161, 8'd220, 8'd155};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd162, 8'd220, 8'd156};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd143, 8'd209, 8'd133};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd142, 8'd209, 8'd132};
					endcase
				end
				`ybit'd11: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd67, 8'd141, 8'd55};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd70, 8'd144, 8'd67};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd148, 8'd207, 8'd138};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd150, 8'd210, 8'd138};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd72, 8'd145, 8'd63};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd72, 8'd145, 8'd63};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd3, 8'd0, 8'd4};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd0, 8'd3, 8'd0};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd97, 8'd203, 8'd81};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd98, 8'd204, 8'd82};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd169, 8'd212, 8'd165};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd169, 8'd214, 8'd161};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd147, 8'd210, 8'd137};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd146, 8'd210, 8'd136};
					endcase
				end
				`ybit'd12: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd88, 8'd160, 8'd87};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd86, 8'd160, 8'd85};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd173, 8'd231, 8'd162};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd177, 8'd229, 8'd167};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd89, 8'd161, 8'd87};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd89, 8'd161, 8'd87};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd3, 8'd0, 8'd4};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd87, 8'd183, 8'd73};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd88, 8'd184, 8'd74};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd71, 8'd151, 8'd64};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd68, 8'd151, 8'd62};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd175, 8'd230, 8'd164};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd175, 8'd229, 8'd167};
					endcase
				end
				`ybit'd13: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd93, 8'd162, 8'd87};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd91, 8'd157, 8'd89};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd178, 8'd228, 8'd167};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd176, 8'd230, 8'd163};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd89, 8'd160, 8'd85};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd87, 8'd157, 8'd83};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd3, 8'd0, 8'd4};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd1, 8'd1, 8'd1};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd8, 8'd2, 8'd9};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd7, 8'd0, 8'd8};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd4};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd5, 8'd1, 8'd7};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd0, 8'd2, 8'd0};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd0, 8'd6, 8'd0};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd91, 8'd184, 8'd70};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd91, 8'd184, 8'd69};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd69, 8'd152, 8'd62};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd71, 8'd150, 8'd64};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd176, 8'd229, 8'd163};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd177, 8'd228, 8'd164};
					endcase
				end
				`ybit'd14: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd120, 8'd217, 8'd104};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd122, 8'd216, 8'd102};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd96, 8'd200, 8'd76};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd97, 8'd200, 8'd82};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd121, 8'd218, 8'd105};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd119, 8'd216, 8'd103};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd2, 8'd0, 8'd1};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd5};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd132, 8'd213, 8'd113};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd137, 8'd207, 8'd121};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd158, 8'd212, 8'd150};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd156, 8'd214, 8'd153};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd4};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd2, 8'd0, 8'd6};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd49, 8'd136, 8'd39};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd48, 8'd135, 8'd38};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd99, 8'd200, 8'd78};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd97, 8'd200, 8'd82};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd98, 8'd202, 8'd82};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd97, 8'd201, 8'd80};
					endcase
				end
				`ybit'd15: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd121, 8'd218, 8'd105};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd122, 8'd216, 8'd102};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd98, 8'd202, 8'd77};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd98, 8'd201, 8'd83};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd121, 8'd218, 8'd105};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd119, 8'd216, 8'd103};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd2, 8'd1, 8'd1};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd3, 8'd0, 8'd5};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd130, 8'd211, 8'd111};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd137, 8'd207, 8'd121};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd157, 8'd211, 8'd149};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd156, 8'd214, 8'd153};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd4, 8'd0, 8'd4};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd2, 8'd0, 8'd6};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd48, 8'd135, 8'd38};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd49, 8'd136, 8'd39};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd99, 8'd200, 8'd78};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd97, 8'd200, 8'd82};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd95, 8'd203, 8'd82};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd93, 8'd205, 8'd81};
					endcase
				end
				`ybit'd16: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd171, 8'd221, 8'd160};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd175, 8'd220, 8'd156};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd85, 8'd175, 8'd74};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd90, 8'd175, 8'd72};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd166, 8'd223, 8'd160};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd166, 8'd224, 8'd160};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd96, 8'd201, 8'd80};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd106, 8'd196, 8'd86};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd8, 8'd148, 8'd5};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd7, 8'd148, 8'd0};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd60, 8'd170, 8'd47};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd56, 8'd174, 8'd51};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd79, 8'd204, 8'd74};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd83, 8'd203, 8'd69};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd71, 8'd194, 8'd54};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd71, 8'd194, 8'd54};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd121, 8'd208, 8'd114};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd118, 8'd208, 8'd112};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd88, 8'd175, 8'd76};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd89, 8'd174, 8'd73};
					endcase
				end
				`ybit'd17: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd168, 8'd223, 8'd155};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd168, 8'd224, 8'd152};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd86, 8'd174, 8'd69};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd86, 8'd176, 8'd67};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd165, 8'd224, 8'd156};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd165, 8'd224, 8'd156};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd101, 8'd200, 8'd83};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd101, 8'd198, 8'd88};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd4, 8'd153, 8'd4};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd10, 8'd148, 8'd4};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd62, 8'd171, 8'd52};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd58, 8'd176, 8'd50};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd89, 8'd200, 8'd69};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd88, 8'd201, 8'd70};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd72, 8'd193, 8'd54};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd72, 8'd193, 8'd54};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd124, 8'd206, 8'd116};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd121, 8'd208, 8'd114};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd88, 8'd176, 8'd74};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd88, 8'd176, 8'd74};
					endcase
				end
				`ybit'd18: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd135, 8'd211, 8'd125};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd137, 8'd211, 8'd128};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd86, 8'd185, 8'd73};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd85, 8'd187, 8'd69};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd134, 8'd213, 8'd129};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd136, 8'd215, 8'd130};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd53, 8'd144, 8'd49};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd56, 8'd144, 8'd43};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd5, 8'd153, 8'd5};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd8, 8'd148, 8'd3};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd20, 8'd154, 8'd11};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd30, 8'd157, 8'd14};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd87, 8'd194, 8'd73};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd87, 8'd191, 8'd72};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd64, 8'd173, 8'd45};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd64, 8'd174, 8'd46};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd150, 8'd217, 8'd140};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd153, 8'd220, 8'd139};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd88, 8'd185, 8'd72};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd88, 8'd186, 8'd73};
					endcase
				end
				`ybit'd19: begin
					case(X)
						`xbit'd0: {mapR, mapG, mapB} <= {8'd137, 8'd211, 8'd126};
						`xbit'd1: {mapR, mapG, mapB} <= {8'd134, 8'd210, 8'd125};
						`xbit'd2: {mapR, mapG, mapB} <= {8'd88, 8'd185, 8'd71};
						`xbit'd3: {mapR, mapG, mapB} <= {8'd88, 8'd189, 8'd71};
						`xbit'd4: {mapR, mapG, mapB} <= {8'd136, 8'd211, 8'd126};
						`xbit'd5: {mapR, mapG, mapB} <= {8'd136, 8'd211, 8'd126};
						`xbit'd6: {mapR, mapG, mapB} <= {8'd57, 8'd144, 8'd49};
						`xbit'd7: {mapR, mapG, mapB} <= {8'd56, 8'd144, 8'd44};
						`xbit'd8: {mapR, mapG, mapB} <= {8'd4, 8'd152, 8'd1};
						`xbit'd9: {mapR, mapG, mapB} <= {8'd5, 8'd149, 8'd3};
						`xbit'd10: {mapR, mapG, mapB} <= {8'd22, 8'd155, 8'd12};
						`xbit'd11: {mapR, mapG, mapB} <= {8'd22, 8'd156, 8'd7};
						`xbit'd12: {mapR, mapG, mapB} <= {8'd89, 8'd193, 8'd72};
						`xbit'd13: {mapR, mapG, mapB} <= {8'd87, 8'd191, 8'd73};
						`xbit'd14: {mapR, mapG, mapB} <= {8'd66, 8'd172, 8'd46};
						`xbit'd15: {mapR, mapG, mapB} <= {8'd67, 8'd173, 8'd47};
						`xbit'd16: {mapR, mapG, mapB} <= {8'd150, 8'd218, 8'd141};
						`xbit'd17: {mapR, mapG, mapB} <= {8'd154, 8'd217, 8'd137};
						`xbit'd18: {mapR, mapG, mapB} <= {8'd88, 8'd184, 8'd73};
						`xbit'd19: {mapR, mapG, mapB} <= {8'd88, 8'd185, 8'd72};
					endcase
				end
			endcase
		end
	end

endmodule
module displays(
	input [3:0]entrada1,
	input [3:0]entrada2,
	input [3:0]entrada3,
	input [3:0]entrada4,
	input [3:0]entrada5,
	input [1:0]controle_displays,
	input overflow,
	output reg [6:0]display1,
	output reg [6:0]display2,
	output reg [6:0]display3,
	output reg [6:0]display4,
	output reg [6:0]display5
);
always@(entrada1)
if(overflow==1)
begin
	case(entrada1)
		4'b0000 : display1 = ~7'b1110111;
		4'b0001 : display1 = ~7'b1110111;
		4'b0010 : display1 = ~7'b1110111;
		4'b0011 : display1 = ~7'b1110111;
		4'b0100 : display1 = ~7'b1110111;
		4'b0101 : display1 = ~7'b1110111;
		4'b0110 : display1 = ~7'b1110111;
		4'b0111 : display1 = ~7'b1110111;
		4'b1000 : display1 = ~7'b1110111;
		4'b1001 : display1 = ~7'b1110111;
	endcase
end
else
begin
	if(controle_displays==2'b00)
	begin
		case(entrada1)
			4'b0000 : display1 = ~7'b1111110;
			4'b0001 : display1 = ~7'b0110000;
			4'b0010 : display1 = ~7'b1101101;
			4'b0011 : display1 = ~7'b1111001;
			4'b0100 : display1 = ~7'b0110011;
			4'b0101 : display1 = ~7'b1011011;
			4'b0110 : display1 = ~7'b1011111;
			4'b0111 : display1 = ~7'b1110000;
			4'b1000 : display1 = ~7'b1111111;
			4'b1001 : display1 = ~7'b1111011;
		endcase
	end
	/*else
	begin
		case(entrada1)
			4'b0000 : display1 = ~7'b0000000;
			4'b0001 : display1 = ~7'b0000000;
			4'b0010 : display1 = ~7'b0000000;
			4'b0011 : display1 = ~7'b0000000;
			4'b0100 : display1 = ~7'b0000000;
			4'b0101 : display1 = ~7'b0000000;
			4'b0110 : display1 = ~7'b0000000;
			4'b0111 : display1 = ~7'b0000000;
			4'b1000 : display1 = ~7'b0000000;
			4'b1001 : display1 = ~7'b0000000;
			default : display1 = ~7'b1111111;
		endcase
	end*/
end
	
always@(entrada2)
if(overflow==1)
begin
	case(entrada2)
		4'b0000 : display2 = ~7'b1001111;
		4'b0001 : display2 = ~7'b1001111;
		4'b0010 : display2 = ~7'b1001111;
		4'b0011 : display2 = ~7'b1001111;
		4'b0100 : display2 = ~7'b1001111;
		4'b0101 : display2 = ~7'b1001111;
		4'b0110 : display2 = ~7'b1001111;
		4'b0111 : display2 = ~7'b1001111;
		4'b1000 : display2 = ~7'b1001111;
		4'b1001 : display2 = ~7'b1001111;
	endcase
end
else
begin
	if(controle_displays==2'b00)
	begin
		case(entrada2)
			4'b0000 : display2 = ~7'b1111110;
			4'b0001 : display2 = ~7'b0110000;
			4'b0010 : display2 = ~7'b1101101;
			4'b0011 : display2 = ~7'b1111001;
			4'b0100 : display2 = ~7'b0110011;
			4'b0101 : display2 = ~7'b1011011;
			4'b0110 : display2 = ~7'b1011111;
			4'b0111 : display2 = ~7'b1110000;
			4'b1000 : display2 = ~7'b1111111;
			4'b1001 : display2 = ~7'b1111011;
		endcase
	end
	/*else
	begin
		case(entrada2)
			4'b0000 : display2 = ~7'b0000000;
			4'b0001 : display2 = ~7'b0000000;
			4'b0010 : display2 = ~7'b0000000;
			4'b0011 : display2 = ~7'b0000000;
			4'b0100 : display2 = ~7'b0000000;
			4'b0101 : display2 = ~7'b0000000;
			4'b0110 : display2 = ~7'b0000000;
			4'b0111 : display2 = ~7'b0000000;
			4'b1000 : display2 = ~7'b0000000;
			4'b1001 : display2 = ~7'b0000000;
			default : display2 = ~7'b1111111;
		endcase
	end*/
end

always@(entrada3)
if(overflow==1)
begin
	case(entrada3)
		4'b0000 : display3 = ~7'b0111110;
		4'b0001 : display3 = ~7'b0111110;
		4'b0010 : display3 = ~7'b0111110;
		4'b0011 : display3 = ~7'b0111110;
		4'b0100 : display3 = ~7'b0111110;
		4'b0101 : display3 = ~7'b0111110;
		4'b0110 : display3 = ~7'b0111110;
		4'b0111 : display3 = ~7'b0111110;
		4'b1000 : display3 = ~7'b0111110;
		4'b1001 : display3 = ~7'b0111110;
	endcase
end
else
begin
	if(controle_displays==2'b00)
	begin
		case(entrada3)
			4'b0000 : display3 = ~7'b1111110;
			4'b0001 : display3 = ~7'b0110000;
			4'b0010 : display3 = ~7'b1101101;
			4'b0011 : display3 = ~7'b1111001;
			4'b0100 : display3 = ~7'b0110011;
			4'b0101 : display3 = ~7'b1011011;
			4'b0110 : display3 = ~7'b1011111;
			4'b0111 : display3 = ~7'b1110000;
			4'b1000 : display3 = ~7'b1111111;
			4'b1001 : display3 = ~7'b1111011;
		endcase
	end
	/*else
	begin
		case(entrada3)
			4'b0000 : display3 = ~7'b0000000;
			4'b0001 : display3 = ~7'b0000000;
			4'b0010 : display3 = ~7'b0000000;
			4'b0011 : display3 = ~7'b0000000;
			4'b0100 : display3 = ~7'b0000000;
			4'b0101 : display3 = ~7'b0000000;
			4'b0110 : display3 = ~7'b0000000;
			4'b0111 : display3 = ~7'b0000000;
			4'b1000 : display3 = ~7'b0000000;
			4'b1001 : display3 = ~7'b0000000;
			default : display3 = ~7'b1111111;
		endcase
	end*/
end

always@(entrada4)
if(overflow==1)
begin
	case(entrada4)
		4'b0000 : display4 = ~7'b1111110;
		4'b0001 : display4 = ~7'b1111110;
		4'b0010 : display4 = ~7'b1111110;
		4'b0011 : display4 = ~7'b1111110;
		4'b0100 : display4 = ~7'b1111110;
		4'b0101 : display4 = ~7'b1111110;
		4'b0110 : display4 = ~7'b1111110;
		4'b0111 : display4 = ~7'b1111110;
		4'b1000 : display4 = ~7'b1111110;
		4'b1001 : display4 = ~7'b1111110;
	endcase
end
else
begin
	if(controle_displays==2'b00)
	begin
		case(entrada4)
			4'b0000 : display4 = ~7'b1111110;
			4'b0001 : display4 = ~7'b0110000;
			4'b0010 : display4 = ~7'b1101101;
			4'b0011 : display4 = ~7'b1111001;
			4'b0100 : display4 = ~7'b0110011;
			4'b0101 : display4 = ~7'b1011011;
			4'b0110 : display4 = ~7'b1011111;
			4'b0111 : display4 = ~7'b1110000;
			4'b1000 : display4 = ~7'b1111111;
			4'b1001 : display4 = ~7'b1111011;
		endcase
	end
	/*else
	begin
		case(entrada4)
			4'b0000 : display4 = ~7'b0000000;
			4'b0001 : display4 = ~7'b0000000;
			4'b0010 : display4 = ~7'b0000000;
			4'b0011 : display4 = ~7'b0000000;
			4'b0100 : display4 = ~7'b0000000;
			4'b0101 : display4 = ~7'b0000000;
			4'b0110 : display4 = ~7'b0000000;
			4'b0111 : display4 = ~7'b0000000;
			4'b1000 : display4 = ~7'b0000000;
			4'b1001 : display4 = ~7'b0000000;
			default : display4 = ~7'b1111111;
		endcase
	end*/
end

always@(entrada5)
if(overflow==1)
begin
	case(entrada5)
		4'b0000 : display5 = ~7'b0000000;
		4'b0001 : display5 = ~7'b0000000;
		4'b0010 : display5 = ~7'b0000000;
		4'b0011 : display5 = ~7'b0000000;
		4'b0100 : display5 = ~7'b0000000;
		4'b0101 : display5 = ~7'b0000000;
		4'b0110 : display5 = ~7'b0000000;
		4'b0111 : display5 = ~7'b0000000;
		4'b1000 : display5 = ~7'b0000000;
		4'b1001 : display5 = ~7'b0000000;
	endcase
end
else
begin
	if(controle_displays==2'b00)
	begin
		case(entrada5)
			4'b0000 : display5 = ~7'b1111110;
			4'b0001 : display5 = ~7'b0110000;
			4'b0010 : display5 = ~7'b1101101;
			4'b0011 : display5 = ~7'b1111001;
			4'b0100 : display5 = ~7'b0110011;
			4'b0101 : display5 = ~7'b1011011;
			4'b0110 : display5 = ~7'b1011111;
			4'b0111 : display5 = ~7'b1110000;
			4'b1000 : display5 = ~7'b1111111;
			4'b1001 : display5 = ~7'b1111011;
		endcase
	end
	/*else
	begin
		case(entrada5)
			4'b0000 : display5 = ~7'b0000000;
			4'b0001 : display5 = ~7'b0000000;
			4'b0010 : display5 = ~7'b0000000;
			4'b0011 : display5 = ~7'b0000000;
			4'b0100 : display5 = ~7'b0000000;
			4'b0101 : display5 = ~7'b0000000;
			4'b0110 : display5 = ~7'b0000000;
			4'b0111 : display5 = ~7'b0000000;
			4'b1000 : display5 = ~7'b0000000;
			4'b1001 : display5 = ~7'b0000000;
			default : display5 = ~7'b1111111;
		endcase
	end*/
end
endmodule
module clockout(
	input clk,
	output reg clkout
);
	reg [18:0] count_reg = 0;

always @(posedge clk) 
begin
	clkout = 0;
   if (count_reg < 499999) 
		count_reg <= count_reg + 1; 	
	else 
	begin
		count_reg <= 0;
      clkout = 1;
	end
end
endmodule
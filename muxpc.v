module muxpc(
	input controlemux,
	input clk,
	input clock1,
	output reg clock2
);

always@(*)
begin
	if(controlemux==1)
	begin
		clock2=clock1;
	end
	else
		clock2=clk;
end
endmodule
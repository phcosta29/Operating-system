module BCD(
	input [15:0]binario,
	output reg [3:0] dezenademilhar,
	output reg [3:0] milhar,
	output reg [3:0] centena,
	output reg [3:0] dezena,
	output reg [3:0] unidade
);

integer i;
always@(binario)
begin
	dezenademilhar=4'd0;
	milhar=4'd0;
	centena=4'd0;
	dezena=4'd0;
	unidade=4'd0;
	
	for(i=15;i>=0;i=i-1)
	begin
		if(dezenademilhar>=5)
			dezenademilhar=dezenademilhar+3;
		if(milhar>=5)
			milhar=milhar+3;
		if(centena>=5)
			centena=centena+3;
		if(dezena>=5)
			dezena=dezena+3;
		if(unidade>=5)
			unidade=unidade+3;
		dezenademilhar=dezenademilhar<<1;
		dezenademilhar[0]=milhar[3];
		milhar=milhar<<1;
		milhar[0]=centena[3];
		centena=centena<<1;
		centena[0]=dezena[3];
		dezena=dezena<<1;
		dezena[0]=unidade[3];
		unidade=unidade<<1;
		unidade[0]=binario[i];
	end
end
endmodule
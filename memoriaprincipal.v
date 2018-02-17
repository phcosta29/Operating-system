module memoriaprincipal(
	input [1:0]controle_memoria,//[1:0]
	//input [9:0]hd_set,
	input [15:0]endereco_memoria,
	input [15:0]store,
	input clk,
	output [15:0]registrador_memoria
);
	reg [15:0]memoria[7:0][7:0];//[10:0][199:0] [249:0]
	//reg [15:0]local;
	//reg [15:0]endereco;
	
always@(posedge clk)
begin
	if(controle_memoria==2'b01)
				memoria[endereco_memoria[15:8]][endereco_memoria[7:0]]=store;//[local][endereco_memoria[15:0]] [endereco[15:0]]
	/*else
	begin
		if(controle_memoria==2'b10)
		begin
			local[15:10]=6'b000000;
			local[9:0]=hd_set[9:0];
			endereco=hd_set*50 + endereco_memoria;
		end
	end*/
end
	assign registrador_memoria=memoria[endereco_memoria[15:8]][endereco_memoria[7:0]];//[local][endereco_memoria[15:0]] [endereco[15:0]]
endmodule
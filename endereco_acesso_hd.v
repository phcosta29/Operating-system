module endereco_acesso_hd(
	input controle_end,
	input [9:0]hd_set,
	output reg[15:0]endereco_hd,
	output reg[9:0]setor_hd
);

	reg [15:0]cont=16'b0000000000100000;

always@(controle_end or hd_set)
begin
	if(controle_end)
	begin
		endereco_hd=cont;
		setor_hd=hd_set;
		cont = cont + 16'b0000000000000001;
	end
end 
endmodule

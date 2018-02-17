module memoriainstrucao(
	input [15:0]pc,
	input [9:0]processo,
	input clk,
	input [9:0]hd_set,
	input [31:0]instrucao_entrada,
	input [1:0]controle_instr,
	output [31:0]instrucao_saida
);
	reg[31:0]mem_instrucao[4:0][63:0];
	reg[15:0]end_memoria=16'b0000000000000001;
	reg[15:0]pos_atual=16'b0000000000000000;
	
always@(posedge clk)
begin
	if(controle_instr==2'b00)
		mem_instrucao[0][16'b0000000000000001]=32'b11001000000000100000000000000010;
		mem_instrucao[0][16'b0000000000000010]=32'b11010000000000100000000000000000;
	if(controle_instr==2'b01)
	begin
		mem_instrucao[hd_set][end_memoria]=instrucao_entrada;
		end_memoria = end_memoria + 16'b0000000000000001;
	end
	else
		end_memoria=16'b0000000000000001;
end  
	assign instrucao_saida=mem_instrucao[processo][pc[15:0]];
endmodule
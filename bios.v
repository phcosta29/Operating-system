module bios(
	input clk,
	input sinal_ok_controladora,
	input sinal_ok_mem_principal,
	input sinal_ok_mem_instrucao,
	input sinal_ok_mem_hd,
	input sinal_ok_banco_registradores,
	input sinal_ok_ula,
	input sinal_ok_pc,
	output reg sinal_controladora,
	output reg sinal_mem_principal,
	output reg sinal_mem_instrucao,
	output reg sinal_mem_hd,
	output reg sinal_banco_registradores,
	output reg sinal_ula,
	output reg sinal_pc,
	output reg [15:0]trava_pc,
	output reg sinal_mux,
	output reg [31:0]instrucao_inicio
);

	reg [1:0]inicio=0;
	reg sinal_ok=0;
	reg [10:0]endereco_base_so=11'b00000000001;
	reg [15:0]endereco_so=16'b0000000000100000;
	reg [15:0]tamanho_so=16'b0000000000101010;

always@(posedge clk)
begin
	case(inicio)
		2'b00://envia sinal para ver estado dos módulos
		begin
			sinal_controladora=1;
			sinal_mem_principal=1;
			sinal_mem_instrucao=1;
			sinal_mem_hd=1;
			sinal_banco_registradores=1;
			sinal_ula=1;
			sinal_pc=1;
			inicio=2'b01;
		end
		2'b01://verificar estados de ok
		begin
			if(sinal_ok_controladora==1 && sinal_ok_mem_principal==1 && sinal_ok_mem_instrucao==1 && sinal_ok_mem_hd==1 && sinal_ok_banco_registradores==1 && sinal_ok_ula==1 && sinal_ok_pc==1)
				sinal_ok=1;
			else
				sinal_ok=0;
			inicio=2'b10;
		end
		2'b10://escreve na memoria de instrucao para carregar so
		begin
			trava_pc=tamanho_so;
			sinal_mux=1;
			instrucao_inicio={5'bxxxxx,endereco_base_so,endereco_so};//5'bxxxxx=opcode para copiar pela primeira vez do hd
			inicio=2'b11;
		end
		2'b11:
			sinal_mux=0;
	endcase
end
endmodule
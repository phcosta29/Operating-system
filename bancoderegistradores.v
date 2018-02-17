module bancoderegistradores(
	input [2:0]controle_registradores,
	input [4:0]endereco_registrador1,
	input [4:0]endereco_registrador2,
	input [4:0]endereco_registrador3,
	input [15:0]ula,
	input [15:0]valor,
	input [15:0]registrador_memoria,
	input clk,
	input [15:0]dado,
	output [15:0]valor1,
	output [15:0]valor2,
	output [15:0]store
	//output [15:0]imprimir
);

	reg[15:0]registradores[31:0];

always@(posedge clk)
begin
	case(controle_registradores)
	3'b000: //operacoes com imediato
		registradores[endereco_registrador1]=ula;
	3'b001: //operações com 3 registradores
		registradores[endereco_registrador1]=ula;
	3'b010: //load
		registradores[endereco_registrador1]=registrador_memoria;
	3'b011: //loadi
		registradores[endereco_registrador1]=valor;
	3'b100: //input
		registradores[endereco_registrador1]=dado;
	default: registradores[endereco_registrador1] = registradores[endereco_registrador1];
	endcase
end
	//assign   imprimir=registradores[endereco_registrador2];
	assign 	store=registradores[endereco_registrador1];
	assign 	valor1=registradores[endereco_registrador2];
	assign   valor2=registradores[endereco_registrador3];
endmodule

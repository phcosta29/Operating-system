module moduloio(
	input [15:0]entrada,
	input [1:0]controle_moduloio,
	input clk,
	input  [15:0]imprimir,
	output [3:0]saida1,
	output [3:0]saida2,
	output [3:0]saida3,
	output [3:0]saida4,
	output [3:0]saida5,
   output [15:0]dado
);

	assign dado=entrada;

BCD(.binario(imprimir),
		    .dezenademilhar(saida5),
			 .milhar(saida4),
			 .centena(saida3),
			 .dezena(saida2),
			 .unidade(saida1));
endmodule
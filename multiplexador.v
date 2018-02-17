module multiplexador(input [15:0] valor1, input [15:0] endereco_memoria, input controle_mux, output reg [15:0] pos);
	always@(controle_mux or valor1 or endereco_memoria)
	begin
		case(controle_mux)
			1'b0:pos = valor1;
			1'b1:pos = endereco_memoria;
		endcase
	end
endmodule
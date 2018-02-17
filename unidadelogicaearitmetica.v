module unidadelogicaearitmetica(
	input [4:0]controle_ula,
	input [15:0]valor1,
	input [15:0]valor2,
	input [15:0]valor,
	input [15:0]endereco_branch,
	input [15:0]pc,
	input [15:0]store,
	output reg[15:0]ula,
	output reg[15:0]branch,
	output reg overflow
);

always@(*)
begin
	overflow=0;
	
	case(controle_ula)
	5'b00000: //add.
	begin
		ula=valor1+valor2;
		if(ula>65535)
			overflow=1;
	end
	
	5'b00001: //addi.
	begin
		ula=valor1+valor;
		if(ula>65535)
			overflow=1;
	end
	
	5'b00010: //sub.
	begin
		ula=valor1-valor2;
		if(valor2>valor1)
			overflow=1;
	end
	
	5'b00011: //subi.
	begin
		ula=valor1-valor;
		if(valor>valor1)
			overflow=1;
	end
	
	5'b00100: //mult.
	begin
		ula=valor1*valor2;
		if(ula>65535)
			overflow=1;
	end
	5'b00101: //multi.
	begin
		ula=valor1*valor;
		if(ula>65535)
			overflow=1;
	end
	5'b00110: //div.
		ula=valor1/valor2;
		
	5'b00111: //divi.
		ula=valor1/valor;
		
	5'b01001: //branch equal.
	begin
		if(store==valor1)
			branch=endereco_branch;
		else
			branch=pc+16'b0000000000000001;
	end
	
	5'b01010: //branch not equal.
	begin
		if(store!=valor1)
			branch=endereco_branch;
		else
			branch=pc+16'b0000000000000001;
	end
	
	5'b01011: //slt.
	begin
		if(valor1<valor2)
			ula=16'b0000000000000001;
		else
			ula=16'b0000000000000000;
	end
	
	5'b01100: //slti.
	begin
		if(valor1<valor)
			ula=16'b0000000000000001;
		else
			ula=16'b0000000000000000;
	end
	
	5'b01111: //not.
		ula=~valor1;
		
	5'b10101: //parar
		ula=ula;
endcase
end
endmodule

module contadordeprograma(
input [2:0]controle_pc,
input [9:0]hd_set,
input [15:0]jump,
input [15:0]tamanho,
input [15:0]branch,
input overflow,
input clk,
input reset,
output reg[15:0]pc,
output reg[9:0]processo
);

reg[15:0]endereco_atual;
reg[15:0]tam=0;
reg[9:0]proc=10'b0000000000;
reg[15:0]pc0;
reg[15:0]pc1;
reg[15:0]pc2;
reg[15:0]pc3;
reg[15:0]pc4;
//reg prim=1'b0;

always@(posedge clk)
begin
	case(controle_pc)
	3'b000://apenas incrementa 1.
	begin
		if(overflow==1)
		begin
			pc=pc;
		end
		else	
		begin
			if(proc==10'b0000000000)
			begin
				pc=pc0+16'b0000000000000001;
				processo=proc;
				pc0=pc;
			end
			if(proc==10'b0000000001)
			begin
				pc=pc1+16'b0000000000000001;
				processo=proc;
				pc1=pc;
			end
			if(proc==10'b0000000010)
			begin
				pc=pc2+16'b0000000000000001;
				processo=proc;
				pc2=pc;
			end
			if(proc==10'b0000000011)
			begin
				pc=pc3+16'b0000000000000001;
				processo=proc;
				pc3=pc;
			end
			if(proc==10'b0000000100)
			begin
				pc=pc4+16'b0000000000000001;
				processo=proc;
				pc4=pc;
			end
		end
		tam=0;
	end

	3'b001://jump.
	begin
		if(proc==10'b0000000000)
			begin
				pc=jump;
				processo=proc;
				pc0=pc;
			end
			if(proc==10'b0000000001)
			begin
				pc=jump;
				processo=proc;
				pc1=pc;
			end
			if(proc==10'b0000000010)
			begin
				pc=jump;
				processo=proc;
				pc2=pc;
			end
			if(proc==10'b0000000011)
			begin
				pc=jump;
				processo=proc;
				pc3=pc;
			end
			if(proc==10'b0000000100)
			begin
				pc=jump;
				processo=proc;
				pc4=pc;
			end
		tam=0;
	end
	
	3'b010://apenas incrementa o que for passado pelo branch.
	begin
		if(proc==10'b0000000000)
			begin
				pc=branch;
				processo=proc;
				pc0=pc;
			end
			if(proc==10'b0000000001)
			begin
				pc=branch;
				processo=proc;
				pc1=pc;
			end
			if(proc==10'b0000000010)
			begin
				pc=branch;
				processo=proc;
				pc2=pc;
			end
			if(proc==10'b0000000011)
			begin
				pc=branch;
				processo=proc;
				pc3=pc;
			end
			if(proc==10'b0000000100)
			begin
				pc=branch;
				processo=proc;
				pc4=pc;
			end
		tam=0;
	end
	
	3'b011://condição de última instrução.
	begin
		pc=pc;
		tam=0;
	end
	3'b100:
	begin
		if(tam<tamanho-1)
		begin
			tam=tam+16'b0000000000000001;
			pc=pc;
			endereco_atual=pc;
		end
		else	
		begin
			pc=endereco_atual+16'b0000000000000001;
			endereco_atual=pc;
		end
	end
	3'b101:
	begin
		proc=hd_set;
		if(proc==10'b0000000000)
			begin
				pc=pc0+16'b0000000000000001;
				processo=proc;
				pc0=pc;
			end
			if(proc==10'b0000000001)
			begin
				pc=pc1+16'b0000000000000001;
				processo=proc;
				pc1=pc;
			end
			if(proc==10'b0000000010)
			begin
				pc=pc2+16'b0000000000000001;
				processo=proc;
				pc2=pc;
			end
			if(proc==10'b0000000011)
			begin
				pc=pc3+16'b0000000000000001;
				processo=proc;
				pc3=pc;
			end
			if(proc==10'b0000000100)
			begin
				pc=pc4+16'b0000000000000001;
				processo=proc;
				pc4=pc;
			end
		tam=0;
	end
	endcase
	if(reset==1)
	begin
		pc=16'b0000000000000001;
		pc0=16'b0000000000000000;
		pc1=16'b0000000000000000;
		pc2=16'b0000000000000000;
		pc3=16'b0000000000000000;
		pc4=16'b0000000000000000;
		proc=10'b0000000000;
		processo=proc;
		endereco_atual=pc;
	end
end
endmodule
module processamento(
	input clk,
	input reset,
	input [15:0]entrada,
	input button_in, 
	output [6:0]display1,
	output [6:0]display2,
	output [6:0]display3,
	output [6:0]display4,
	output [6:0]display5,
	output [4:0]codigo
);

wire [15:0]pc;
wire [31:0]instrucao_saida;
wire [2:0]controle_registradores;
wire [4:0]endereco_registrador1;
wire [4:0]endereco_registrador2;
wire [4:0]endereco_registrador3;
wire [15:0]ula;
wire [15:0]registrador_memoria;
wire [1:0]controle_memoria;//[1:0]
wire controle_mux;
wire [15:0]endereco_memoria;
wire [15:0]store;
wire [3:0]controle_ula;
wire [15:0]valor;
wire [15:0]valor1;
wire [15:0]valor2;
wire [15:0]endereco_branch;
wire [2:0]controle_pc;
wire [15:0]branch;
wire [15:0]jump;
wire [1:0]controle_moduloio;
wire [15:0]dado;
wire [3:0]saida1;
wire [3:0]saida2;
wire [3:0]saida3;
wire [3:0]saida4;
wire [3:0]saida5;
wire clkout;
wire [4:0]code;
wire [1:0]controle_displays;
wire [15:0]pos;
wire overflow;
wire clock1;
wire clock2;
wire controlemux;
//wire [1:0]controle_hd;
wire [15:0]endereco_base;
wire [15:0]endereco_hd;
wire fim_do_arquivo;
wire [31:0]instrucao;
/*wire sinal_ok_controladora;
wire sinal_ok_mem_principal;
wire sinal_ok_mem_instrucao;
wire sinal_ok_mem_hd;
wire sinal_ok_banco_registradores;
wire sinal_ok_ula;
wire sinal_ok_pc;
wire sinal_controladora;
wire sinal_mem_principal;
wire sinal_mem_instrucao;
wire sinal_mem_hd;
wire sinal_banco_registradores;
wire sinal_ula;
wire sinal_pc;
wire [15:0]trava_pc;*/
wire sinal_mux;
wire [31:0]instrucao_inicio;
wire [31:0]instrucao_entrada;
wire [1:0]controle_hd;
wire [1:0]controle_instr;
wire [15:0]hd_end;
wire [9:0]hd_set;
wire [15:0]tamanho;
wire controle_end;
wire [15:0]setor_hd;
wire [9:0]processo;

assign code=instrucao_saida[31:27];
assign valor=instrucao_saida[15:0];
assign endereco_branch=instrucao_saida[15:0];
assign endereco_registrador1=instrucao_saida[26:22];
assign endereco_registrador2=instrucao_saida[21:17];
assign endereco_registrador3=instrucao_saida[16:12];
assign jump=instrucao_saida[15:0];
assign endereco_memoria=instrucao_saida[15:0];
assign hd_set=instrucao_saida[25:16];
assign tamanho=instrucao_saida[15:0];

	multiplexador(.valor1(valor1),
					  .endereco_memoria(endereco_memoria),
					  .controle_mux(controle_mux),
					  .pos(pos));	
	muxpc(.controlemux(controlemux),
			.clk(clkout),
			.clock1(clock1),
			.clock2(clock2));
	memoriainstrucao(.pc(pc),
						  .processo(processo),
						  .clk(clkout),//clkout clock1
						  .hd_set(hd_set),
						  .instrucao_entrada(instrucao_entrada),
						  .controle_instr(controle_instr),
						  .instrucao_saida(instrucao_saida));
	controladora(.code(code),
					 .controle_ula(controle_ula),
					 .controle_registradores(controle_registradores),
					 .controle_memoria(controle_memoria),
					 .controle_pc(controle_pc),
					 .controle_moduloio(controle_moduloio),
					 .controle_displays(controle_displays),
					 .controle_mux(controle_mux),
					 .controlemux(controlemux),
					 .controle_hd(controle_hd),
					 .controle_instr(controle_instr),
					 .controle_end(controle_end));
	/*bios(.clk(clockout),
		  .sinal_ok_controladora(sinal_ok_controladora),
		  .sinal_ok_mem_principal(sinal_ok_mem_principal),
		  .sinal_ok_mem_instrucao(sinal_ok_mem_instrucao),
		  .sinal_ok_mem_hd(sinal_ok_mem_hd),
		  .sinal_ok_banco_registradores(sinal_ok_banco_registradores),
		  .sinal_ok_ula(sinal_ok_ula),
		  .sinal_ok_pc(sinal_ok_pc),
		  .sinal_controladora(sinal_controladora),
		  .sinal_mem_principal(sinal_mem_principal),
		  .sinal_mem_instrucao(sinal_mem_instrucao),
		  .sinal_mem_hd(sinal_mem_hd),
		  .sinal_banco_registradores(sinal_banco_registradores),
		  .sinal_ula(sinal_ula),
		  .sinal_pc(sinal_pc),
		  .trava_pc(trava_pc),
		  .sinal_mux(sinal_mux),
		  .instrucao_inicio(instrucao_inicio));*/
	bancoderegistradores(.controle_registradores(controle_registradores),
								.endereco_registrador1(endereco_registrador1),
								.endereco_registrador2(endereco_registrador2),
								.endereco_registrador3(endereco_registrador3),
								.ula(ula),
								.valor(valor),
								.registrador_memoria(registrador_memoria),
								.clk(clkout),//clkout clock1
								.dado(dado),
								.valor1(valor1),
								.valor2(valor2),
								.store(store));
	memoriaprincipal(.controle_memoria(controle_memoria),
						  //.hd_set(hd_set),
						  .endereco_memoria(pos),
						  .store(store),
						  .clk(clkout),//clkout clock1
						  .registrador_memoria(registrador_memoria));
	endereco_acesso_hd(.controle_end(controle_end),
							 .hd_set(hd_set),
							 .endereco_hd(endereco_hd),
							 .setor_hd(setor_hd));
	memoriahd(.clk(clkout),//clkout clock1
				 .setor_hd(hd_set),
				 .endereco_hd(endereco_hd),
				 .controle_hd(controle_hd),
				 .saida_instr(instrucao_entrada));
	/*HDteste(.controle_hd(controle_hd),
			  .hd_set(hd_set),
			  .clk(clkout),//clkout clock1
			  .saida_instr(instrucao_entrada));
	simple_dual_port_ram_dual_clock(.data(32'b0),
											  .read_addr(setor_hd), 
											  .write_addr(endereco_hd),
											  .we(1'b0),
											  .read_clock(clk),
											  .write_clock(clkout),
											  .q(instrucao_entrada));	*/
	unidadelogicaearitmetica(.controle_ula(controle_ula),
									 .valor1(valor1),
									 .valor2(valor2),
									 .valor(valor),
									 .endereco_branch(endereco_branch),
									 .pc(pc),
									 .store(store),
									 .ula(ula),
									 .branch(branch),
									 .overflow(overflow));
   contadordeprograma(.controle_pc(controle_pc),
							 .hd_set(hd_set),
							 .jump(jump),
							 .tamanho(tamanho),
							 .branch(branch),
							 .overflow(overflow),
							 .clk(clock2),//clock1
							 .reset(reset),
							 .pc(pc),
							 .processo(processo));
	moduloio(.entrada(entrada),
				.controle_moduloio(controle_moduloio),
				.clk(clkout),//clkout clock1
				.imprimir(valor1),
				.saida1(saida1),
				.saida2(saida2),
				.saida3(saida3),
				.saida4(saida4),
				.saida5(saida5),
				.dado(dado));
	displays(.entrada1(saida1),
				.entrada2(saida2),
				.entrada3(saida3),
				.entrada4(saida4),
				.entrada5(saida5),
				.controle_displays(controle_displays),
				.overflow(overflow),
				.display1(display1),
				.display2(display2),
				.display3(display3),
				.display4(display4),
				.display5(display5));
	clockout(.clk(clk),
				//.reset(reset),
				.clkout(clkout));
	DeBounce(.clk(clk),
				.n_reset(1),
				.button_in(button_in),
				.DB_out(clock1));
	assign codigo=code;
endmodule

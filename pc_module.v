`timescale 1ns / 1ps

module pc_module(
		input clk,
		input select,
		input[7:0] jmp_to,
		output[7:0] R15,
		output reg[7:0] PC_output
    );
	
	wire[7:0] mux;
	

	always @(posedge clk) begin
		PC_output <= mux;
	end

	assign mux = select ? jmp_to : PC_output + 1; 
	assign R15 = PC_output + 2;
	
endmodule

/******************************************************************
* Description
*	This is the control unit for the ALU. It receves a signal called 
*	ALUOp from the control unit and signals called funct7 and funct3  from
*	the instruction bus.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module ALU_Control
(
	input funct7_i, 
	input [2:0] ALU_Op_i,
	input [2:0] funct3_i,
	

	output [3:0] ALU_Operation_o

);



//funct7_ALUOp_func3
//add  f7:0  f3:0 
localparam R_Type_ADD  = 7'b0_000_000;
//addi f7:x	 f3:0
localparam I_Type_ADDI = 7'bx_001_000;
//sub	 f7:1	 f3:0 
localparam R_Type_SUB  = 7'b1_000_000;
//ori	 f7:x	 f3:6
localparam I_Type_ORI  = 7'bx_000_110;
//slli f7:0 f3:1 
localparam I_Type_SLLI = 7'b0_001_001;// faltaba indicar que es imm
//srli f7:0  f3:5 
localparam I_Type_SRLI = 7'b0_001_101;

reg [3:0] alu_control_values;
wire [6:0] selector;

assign selector = {funct7_i, ALU_Op_i, funct3_i};

always@(selector)begin
	casex(selector)

		R_Type_ADD:  alu_control_values = 4'b0000;
		I_Type_ADDI: alu_control_values = 4'b0000;// Usa el mismo de ADD
		R_Type_SUB:  alu_control_values = 4'b0001;//Este ya es diferente
		I_Type_ORI:  alu_control_values = 4'b0010;
		I_Type_SLLI: alu_control_values = 4'b0011;// Estaba mal puesto el numero
		I_Type_SRLI: alu_control_values = 4'b0100;

		default: alu_control_values = 4'b00_00;
	endcase
end


assign ALU_Operation_o = alu_control_values;



endmodule

/******************************************************************
* Description
*	This module performs a sign extension operation that is need with
*	in instruction like andi and constructs the immediate constant.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Immediate_Unit
(   
	input [6:0] op_i,
	input [31:0]  Instruction_bus_i,
   output reg [31:0] Immediate_o
);



always@(op_i, Instruction_bus_i) begin

	if(op_i == 7'h13)//I format a la izquierda repetir signo 
		Immediate_o = {{20{Instruction_bus_i[31]}},Instruction_bus_i[31:20]};// I format
		
	else if(op_i == 7'h37)//U format a la derecha repetir cero
							//20 bits de la instruccion, y 12 a completar 
		Immediate_o = {Instruction_bus_i[31:12],{12{1'b0}}};// I format
	else
		Immediate_o = 0;// U format
end


endmodule // signExtend

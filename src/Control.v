/******************************************************************
* Description
*	This is control unit for the RISC-V Microprocessor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction bus.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Control
(
	input [6:0]OP_i,
	
	
	output Branch_o,
	output Mem_Read_o,
	output Mem_to_Reg_o,
	output Mem_Write_o,
	output ALU_Src_o,
	output Reg_Write_o,
	output [2:0]ALU_Op_o
);
//OPcodes
localparam R_Type = 7'h33;//0110011
localparam I_Type_LOGIC = 7'h13; //0010011
localparam U_Type = 7'h37; // 0110111 





reg [8:0] control_values;

always@(OP_i) begin
	case(OP_i)//                          876_54_3_210			
											
		R_Type:			control_values = 9'b001_00_0_000;//add no usa inmediato [4]
		I_Type_LOGIC:	control_values = 9'b001_00_1_001;
		U_Type:			control_values = 9'b001_00_1_010;

		default:
			control_values= 9'b000_00_000;
		endcase
end	

assign Branch_o = control_values[8]; // no se usa por ahora 

assign Mem_to_Reg_o = control_values[7];//no se usa por ahora

assign Reg_Write_o = control_values[6];//en R, I y U, si se usa

assign Mem_Read_o = control_values[5];//no se usa por ahora

assign Mem_Write_o = control_values[4];//no se usan por ahora

assign ALU_Src_o = control_values[3]; //decide si es un registro o un inmediato, R no lo necesira

assign ALU_Op_o = control_values[2:0];	//no estan definidos, lo elige el dise;ador

endmodule



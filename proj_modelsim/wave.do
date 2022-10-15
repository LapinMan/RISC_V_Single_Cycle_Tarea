onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color White -itemcolor Black /RISC_V_Single_Cycle_TB/clk_tb
add wave -noupdate -color White -itemcolor Black /RISC_V_Single_Cycle_TB/reset_tb
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -group ALU -color Yellow -itemcolor {Sky Blue} /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Branch_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Read_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_to_Reg_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Write_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -group {Control Unit} -color {Dark Orchid} -itemcolor {Dark Orchid} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -group {ALU Control} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -group {ALU Control} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -group {ALU Control} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -group {ALU Control} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -group {ALU Control} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -group {Program Memory} /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Address_i
add wave -noupdate -group {Program Memory} /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataInput
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -group t1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataInput
add wave -noupdate -group t1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -group t2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataInput
add wave -noupdate -group t2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataOutput
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataInput
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataInput
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -group s2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataInput
add wave -noupdate -group s2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 163
configure wave -valuecolwidth 155
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {374 ns} {438 ns}

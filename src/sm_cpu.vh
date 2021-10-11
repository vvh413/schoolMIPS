/*
 * schoolMIPS - small MIPS CPU for "Young Russian Chip Architects" 
 *              summer school ( yrca@googlegroups.com )
 *
 * originally based on Sarah L. Harris MIPS CPU 
 * 
 * Copyright(c) 2017 Stanislav Zhelnio 
 *                   Aleksandr Romanov 
 */ 

//ALU commands
`define ALU_ADD     3'b000
`define ALU_OR      3'b001
`define ALU_LUI     3'b010
`define ALU_SRL     3'b011
`define ALU_SLTU    3'b100
`define ALU_SUBU    3'b101
`define ALU_XOR     3'b110
`define ALU_SLL     3'b111

//instruction operation code
`define C_SPEC      6'b000000 // Special instructions (depends on function field)
`define C_ADDIU     6'b001001 // I-type, Integer Add Immediate Unsigned
                              //         Rd = Rs + Immed
`define C_BEQ       6'b000100 // I-type, Branch On Equal
                              //         if (Rs == Rt) PC += (int)offset
`define C_LUI       6'b001111 // I-type, Load Upper Immediate
                              //         Rt = Immed << 16
`define C_BNE       6'b000101 // I-type, Branch on Not Equal
                              //         if (Rs != Rt) PC += (int)offset
`define C_SLTIU     6'b001011 // I-type, Set on Less Than Immediate Unsigned
                              //         Rt = (Rs < Immed)
`define C_XORI      6'b001110 // I-type, Exclusive OR Immediate
                              //         Rt = (Rs < Immed)

//instruction function field
`define F_ADDU      6'b100001 // R-type, Integer Add Unsigned
                              //         Rd = Rs + Rt
`define F_OR        6'b100101 // R-type, Logical OR
                              //         Rd = Rs | Rt
`define F_SRL       6'b000010 // R-type, Shift Right Logical
                              //         Rd = Rs∅ >> shift
`define F_SLTU      6'b101011 // R-type, Set on Less Than Unsigned
                              //         Rd = (Rs∅ < Rt∅) ? 1 : 0
`define F_SUBU      6'b100011 // R-type, Unsigned Subtract
                              //         Rd = Rs – Rt
`define F_XOR       6'b100110 // R-type, Exclusive OR
                              //         Rd = Rs xor Rt
`define F_SLL       6'b000000 // R-type, Shift Word Left Logical
                              //         Rd = Rs∅ << shift
`define F_RDEXT     6'b111110 // R-type, ReaD EXTernal value extended by 7's bit
                              //         Rd = ExtIn
`define F_WREXT     6'b111111 // R-type, WRite value to EXTernal output
                              //         ExtIn = Rs
`define F_ANY       6'b??????

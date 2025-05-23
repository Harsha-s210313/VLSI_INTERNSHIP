`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 09:26:17 PM
// Design Name: 
// Module Name: ARITHMETIC_LOGIC_UNIT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ARITHEMETIC_LOGIC_UNIT (
    input  [7:0] A,         // 8-bit input A
    input  [7:0] B,         // 8-bit input B
    input  [2:0] ALU_Sel,   // 3-bit control signal
    output reg [7:0] ALU_Result // 8-bit result output
);

    always @(*) begin
        case (ALU_Sel)
            3'b000: ALU_Result = A + B;       // ADDITION
            3'b001: ALU_Result = A - B;       // SUBTRACTION
            3'b010: ALU_Result = A & B;       // AND
            3'b011: ALU_Result = A | B;       // OR
            3'b100: ALU_Result = ~A;          // NOT (only on A)
            default: ALU_Result = 8'b00000000; // DEFAULT
        endcase
    end

endmodule


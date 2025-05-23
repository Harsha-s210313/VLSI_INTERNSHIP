`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 09:34:29 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_tb;

    reg [7:0] A, B;
    reg [2:0] ALU_Sel;
    wire [7:0] ALU_Result;

    ARITHMETIC_LOGIC_UNIT uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Result(ALU_Result)
    );

    initial begin
        // Test ADDITION
        A = 8'd10; B = 8'd5; ALU_Sel = 3'b000; #10;
        // Test SUBTRACTION
        A = 8'd15; B = 8'd5; ALU_Sel = 3'b001; #10;
        // Test AND
        A = 8'b11001100; B = 8'b10101010; ALU_Sel = 3'b010; #10;
        // Test OR
        A = 8'b11001100; B = 8'b10101010; ALU_Sel = 3'b011; #10;
        // Test NOT
        A = 8'b11001100; ALU_Sel = 3'b100; #10;
    end

endmodule


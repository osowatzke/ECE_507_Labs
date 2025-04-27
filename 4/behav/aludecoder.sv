module aludecoder(
    input  logic       ALUOp,
    input  logic [4:0] Funct,
    output logic [1:0] ALUControl,
    output logic [1:0] FlagW);

    always_comb begin
        if (ALUOp) begin  // which Data-processing Instr?
            case(Funct[4:1])
                4'b0100: ALUControl = 2'b00; // ADD
                4'b0010: ALUControl = 2'b01; // SUB
                4'b0000: ALUControl = 2'b10; // AND
                4'b1100: ALUControl = 2'b11; // ORR
                default: ALUControl = 2'bx;  // unimplemented
            endcase
            FlagW[1] = Funct[0]; // update Z flag if S bit is set
            FlagW[0] = Funct[0] & (ALUControl == 2'b00 | ALUControl == 2'b01);
        end else begin
            ALUControl = 2'b00; // add for non data-processing instructions
            FlagW      = 2'b00; // don't update Flags
        end
    end

endmodule
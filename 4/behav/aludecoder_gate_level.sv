module aludecoder_gate_level(
    input  logic       ALUOp,
    input  logic [4:0] Funct,
    output logic [1:0] ALUControl,
    output logic [1:0] FlagW);

    logic ALUInt;
    
    always_comb begin
        /*if (ALUOp) begin
            //ALUControl[1] = Funct[4] | (!Funct[3] & !Funct[2]);
            //ALUControl[0] = Funct[4] | (!Funct[3] & Funct[2]);
            FlagW[0] = Funct[0] & !ALUControl[1];
        end else begin
            //ALUControl = 2'b00; // add for non data-processing instructions
            //ALUControl[1] = 0;
            FlagW[0]      = 0; // don't update Flags
        end*/
        ALUInt = !(Funct[4] | !(Funct[3] | Funct[2]));
        ALUControl[1] = !ALUInt & ALUOp;
        ALUControl[0] = !(!(ALUOp & Funct[4]) & !(ALUOp & Funct[2]));
        FlagW[1] = ALUOp & Funct[0];
        FlagW[0] = FlagW[1] & ALUInt;
    end

endmodule
`timescale 1ns/1ns

module aludecoder_tb;

    reg clk;
    reg rst;
    
    initial begin
        clk <= 0;
        rst <= 1;
        #100
        rst <= 0;
    end
    
    always begin
        #5 clk <= !clk;
    end
    
    localparam DISABLE = 0;
    localparam ADD     = 1;
    localparam SUB     = 2;
    localparam AND     = 3;
    localparam OR      = 4;
    localparam EXIT    = 5;
    
    localparam FUNCT_ADD = 5'b01000;
    localparam FUNCT_SUB = 5'b00100;
    localparam FUNCT_AND = 5'b00000;
    localparam FUNCT_OR  = 5'b11000;
    
    reg ALUOp;
    reg [2:0] State;
    reg [4:0] Funct;
    
    always @(posedge clk) begin
        if (rst) begin
            State <= DISABLE;
        end else begin
            case (State)
                DISABLE: State <= ADD;
                ADD:     State <= SUB;
                SUB:     State <= AND;
                AND:     State <= OR;
                default: State <= OR;
            endcase             
        end        
    end
    
    always @(*) begin
        if (State == DISABLE) begin
            ALUOp <= 0;
        end else begin
            ALUOp <= 1;
        end
        case (State)
            DISABLE: Funct <= FUNCT_ADD;
            ADD:     Funct <= FUNCT_ADD;
            SUB:     Funct <= FUNCT_SUB;
            AND:     Funct <= FUNCT_AND;
            OR:      Funct <= FUNCT_OR;
            default: Funct <= 0;
        endcase
    end
    
    logic [1:0] ALUControlRef;
    logic [1:0] FlagWRef;
    
    aludecoder decoder_r(
        .ALUOp(ALUOp),
        .Funct(Funct),
        .ALUControl(ALUControlRef),
        .FlagW(FlagWRef));
        
    logic [1:0] ALUControlMeas;
    logic [1:0] FlagWMeas;
        
    aludecoder_gate_level decoder_g(
        .ALUOp(ALUOp),
        .Funct(Funct),
        .ALUControl(ALUControlMeas),
        .FlagW(FlagWMeas));
       
    reg err;
    
    always @(posedge clk) begin
        if (rst) begin
            err <= 0;
        end else begin
            if (ALUControlMeas !== ALUControlRef) begin
                $display("Error when State=%d: ALUControl=4'b%04b, Expected=4'b%04b", State, ALUControlMeas, ALUControlRef);
                err <= 1;
            end
            if (FlagWMeas !== FlagWRef) begin
                $display("Error when State=%d: ALUControl=4'b%04b, Expected=4'b%04b", State, ALUControlMeas, ALUControlRef);
                err <= 1;
            end
            if (State == OR) begin
                if (err) begin
                    $display("Errors Found :(");
                end else begin
                    $display("No Errors Found :)");
                end
                $finish;
            end
        end
    end
    
endmodule
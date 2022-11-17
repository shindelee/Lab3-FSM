module f1_fsm #(
    parameter WIDTH = 8
    
)(
    input logic                   clk, // clock
    input logic                   rst, // reset
    input logic                    en, // enable
    output logic [WIDTH-1:0] data_out  // data output
);

// Define our states
typedef enum {S0, S1, S2, S3, S4, S5, S6, S7, S8} my_state;
my_state current_state, next_state;

// state transition
always_ff @(posedge clk)
    if (rst)
        current_state <= S0;
    else
        current_state <= next_state;

// output logic
always_comb 
    case (current_state)
        S0: data_out = 8'b0;
        S1: data_out = 8'b1;
        S2: data_out = 8'b11;
        S3: data_out = 8'b111;
        S4: data_out = 8'b1111;
        S5: data_out = 8'b11111;
        S6: data_out = 8'b111111;
        S7: data_out = 8'b1111111;
        S8: data_out = 8'b11111111;
        default: data_out = 8'b0;
    endcase

// next state logic
always_comb
    case (current_state)
        S0: if (en) next_state = S1;
            else    next_state = current_state;
        S1: if (en) next_state = S2;
            else    next_state = current_state;
        S2: if (en) next_state = S3;
            else    next_state = current_state;
        S3: if (en) next_state = S4;
            else    next_state = current_state;
        S4: if (en) next_state = S5;
            else    next_state = current_state;
        S5: if (en) next_state = S6;
            else    next_state = current_state;
        S6: if (en) next_state = S7;
            else    next_state = current_state;
        S7: if (en) next_state = S8;
            else    next_state = current_state;
        S8: if (en) next_state = S0;
            else    next_state = current_state;
        default: next_state = S0;
    endcase

endmodule

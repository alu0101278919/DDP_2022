module cpu(input wire clk, reset);
//module cd(input wire clk, reset, s_inc, s_mux_alu, s_mux_datos, we3, wez, input wire [15:0] Datos, input wire [2:0] op_alu output wire [15:0] Direcciones, output wire z, output wire [5:0] opcode);
//module uc(input wire [5:0] opcode, input wire z, output reg s_inc, s_inm, we3, wez, output reg [2:0] op_alu);
wire [5:0] opcode;
wire [2:0] op_alu;
wire [15:0] Datos, Direcciones;
wire s_inc, s_inm, s_mux_datos, we3, wez, z;

cd cam_dat(clk, reset, s_inc, s_inm, s_mux_datos, we3, wez, Datos, op_alu, Direcciones, z, opcode);
uc uni_control(opcode, z, s_mux_datos, s_inc, s_inm, we3, wez, op_alu);

endmodule

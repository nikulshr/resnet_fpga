localparam D2_IN_SIZE = 1;
localparam D2_BW_W = 16;
localparam D2_SHIFT = 6;
localparam LOG2_D2_CYC = 7;
localparam D2_CYC = 128;
localparam D2_CH = 24;
reg [LOG2_D2_CYC-1:0] d2_cntr;
wire [D2_CH-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2;
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_0 = { 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0 };
assign dw_2[0] = dw_2_0[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_1 = { 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040 };
assign dw_2[1] = dw_2_1[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_2 = { 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0 };
assign dw_2[2] = dw_2_2[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_3 = { 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0 };
assign dw_2[3] = dw_2_3[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_4 = { 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000 };
assign dw_2[4] = dw_2_4[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_5 = { 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000 };
assign dw_2[5] = dw_2_5[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_6 = { 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'hffc0 };
assign dw_2[6] = dw_2_6[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_7 = { 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000 };
assign dw_2[7] = dw_2_7[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_8 = { 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040 };
assign dw_2[8] = dw_2_8[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_9 = { 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040 };
assign dw_2[9] = dw_2_9[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_10 = { 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040 };
assign dw_2[10] = dw_2_10[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_11 = { 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000 };
assign dw_2[11] = dw_2_11[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_12 = { 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0 };
assign dw_2[12] = dw_2_12[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_13 = { 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0040 };
assign dw_2[13] = dw_2_13[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_14 = { 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'hffc0 };
assign dw_2[14] = dw_2_14[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_15 = { 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000 };
assign dw_2[15] = dw_2_15[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_16 = { 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'hffc0 };
assign dw_2[16] = dw_2_16[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_17 = { 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0 };
assign dw_2[17] = dw_2_17[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_18 = { 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0 };
assign dw_2[18] = dw_2_18[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_19 = { 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040, 16'hffc0, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040 };
assign dw_2[19] = dw_2_19[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_20 = { 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040 };
assign dw_2[20] = dw_2_20[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_21 = { 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0040 };
assign dw_2[21] = dw_2_21[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_22 = { 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0040, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0 };
assign dw_2[22] = dw_2_22[d2_cntr];
reg [D2_CYC-1:0][D2_IN_SIZE*D2_BW_W-1:0] dw_2_23 = { 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0040, 16'h0000, 16'h0000, 16'hffc0, 16'h0040, 16'h0000, 16'hffc0, 16'hffc0, 16'hffc0, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'h0040, 16'h0000, 16'h0000, 16'h0040, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'hffc0, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'h0000, 16'h0000, 16'hffc0, 16'h0000, 16'hffc0 };
assign dw_2[23] = dw_2_23[d2_cntr];
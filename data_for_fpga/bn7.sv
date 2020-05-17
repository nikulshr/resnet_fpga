localparam BN7_CH = 64;
localparam BN7_BW_A = 5;
localparam BN7_BW_B = 16;
localparam BN7_RSHIFT = 8;
localparam BN7_BW_IN = 16;
localparam BN7_BW_OUT = 1;
localparam BN7_MAXVAL = 1;
reg [BN7_CH-1:0][BN7_BW_A-1:0] bn7_a = { 5'h07, 5'h06, 5'h05, 5'h05, 5'h07, 5'h05, 5'h05, 5'h08, 5'h06, 5'h05, 5'h07, 5'h05, 5'h04, 5'h04, 5'h05, 5'h08, 5'h05, 5'h06, 5'h09, 5'h06, 5'h07, 5'h07, 5'h08, 5'h09, 5'h05, 5'h04, 5'h06, 5'h07, 5'h04, 5'h06, 5'h06, 5'h05, 5'h04, 5'h07, 5'h04, 5'h08, 5'h07, 5'h08, 5'h05, 5'h08, 5'h07, 5'h06, 5'h06, 5'h06, 5'h06, 5'h05, 5'h09, 5'h08, 5'h06, 5'h05, 5'h05, 5'h05, 5'h06, 5'h05, 5'h05, 5'h04, 5'h08, 5'h04, 5'h08, 5'h08, 5'h08, 5'h07, 5'h05, 5'h04 };
reg [BN7_CH-1:0][BN7_BW_B-1:0] bn7_b = { 16'ha7d3, 16'h3f66, 16'h0ad0, 16'hff71, 16'hde76, 16'hee9c, 16'hd079, 16'h4c9b, 16'heda6, 16'hdcb4, 16'h173a, 16'h1690, 16'h0201, 16'hebb4, 16'hfd0b, 16'hf5e2, 16'he6e1, 16'he8bc, 16'hd81d, 16'hf2e7, 16'hf544, 16'h06f2, 16'h0840, 16'hec1a, 16'hef9b, 16'h0257, 16'hdbcc, 16'heedd, 16'h16a9, 16'hd0ee, 16'hf5be, 16'he3ce, 16'hf1bc, 16'hf080, 16'h040b, 16'hebbf, 16'hea8d, 16'hd8e8, 16'hbcbe, 16'hf8a4, 16'h00d2, 16'hf5f0, 16'hff4f, 16'he0d4, 16'hfdef, 16'h2018, 16'h26dd, 16'h069f, 16'hfc18, 16'hee23, 16'h0601, 16'hf075, 16'he99e, 16'hd016, 16'h2382, 16'hf7ca, 16'hcfa5, 16'h03ec, 16'hf7d0, 16'hdd5c, 16'h203c, 16'h2165, 16'hc68a, 16'h24f7 };
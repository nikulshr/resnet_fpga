localparam BN1_CH = 64;
localparam BN1_BW_A = 9;
localparam BN1_BW_B = 15;
localparam BN1_RSHIFT = 8;
localparam BN1_BW_IN = 16;
localparam BN1_BW_OUT = 1;
localparam BN1_MAXVAL = 1;
reg [BN1_CH-1:0][BN1_BW_A-1:0] bn1_a = { 9'h040, 9'h057, 9'h036, 9'h032, 9'h037, 9'h033, 9'h062, 9'h02e, 9'h02c, 9'h030, 9'h038, 9'h035, 9'h04b, 9'h056, 9'h069, 9'h032, 9'h031, 9'h031, 9'h031, 9'h04e, 9'h02f, 9'h061, 9'h032, 9'h044, 9'h05a, 9'h03d, 9'h02f, 9'h05f, 9'h039, 9'h031, 9'h033, 9'h033, 9'h035, 9'h030, 9'h08b, 9'h033, 9'h05a, 9'h032, 9'h038, 9'h08b, 9'h044, 9'h03d, 9'h033, 9'h032, 9'h058, 9'h032, 9'h03a, 9'h072, 9'h059, 9'h04a, 9'h05e, 9'h039, 9'h06c, 9'h033, 9'h02e, 9'h052, 9'h05e, 9'h031, 9'h050, 9'h082, 9'h032, 9'h06d, 9'h02d, 9'h031 };
reg [BN1_CH-1:0][BN1_BW_B-1:0] bn1_b = { 15'h7dbe, 15'h6fe4, 15'h78eb, 15'h04f4, 15'h0233, 15'h0565, 15'h56d4, 15'h054e, 15'h7877, 15'h07f7, 15'h7a22, 15'h0912, 15'h0d43, 15'h7dd2, 15'h6f74, 15'h77ed, 15'h01de, 15'h08a8, 15'h78e1, 15'h00d2, 15'h7ee8, 15'h10be, 15'h043b, 15'h7c1a, 15'h299a, 15'h7a2d, 15'h06ce, 15'h0bf1, 15'h78ef, 15'h006c, 15'h0382, 15'h7879, 15'h7678, 15'h7790, 15'h2bce, 15'h0242, 15'h1566, 15'h0389, 15'h7ba7, 15'h04b6, 15'h086e, 15'h71fc, 15'h7eb6, 15'h7c25, 15'h75b1, 15'h7a6b, 15'h7d7c, 15'h773c, 15'h0277, 15'h0398, 15'h6c50, 15'h7ffb, 15'h76cd, 15'h074c, 15'h7a29, 15'h7acc, 15'h26db, 15'h0377, 15'h6e6d, 15'h5c8f, 15'h054a, 15'h6b2f, 15'h7f5c, 15'h7758 };

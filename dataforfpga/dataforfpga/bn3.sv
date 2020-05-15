localparam BN3_CH = 64;
localparam BN3_BW_A = 5;
localparam BN3_BW_B = 17;
localparam BN3_RSHIFT = 8;
localparam BN3_BW_IN = 16;
localparam BN3_BW_OUT = 1;
localparam BN3_MAXVAL = 1;
reg [BN3_CH-1:0][BN3_BW_A-1:0] bn3_a = { 5'h06, 5'h04, 5'h06, 5'h02, 5'h05, 5'h05, 5'h08, 5'h02, 5'h09, 5'h04, 5'h04, 5'h04, 5'h0a, 5'h0c, 5'h09, 5'h06, 5'h04, 5'h06, 5'h03, 5'h07, 5'h03, 5'h0b, 5'h05, 5'h03, 5'h06, 5'h07, 5'h05, 5'h06, 5'h07, 5'h03, 5'h04, 5'h03, 5'h07, 5'h09, 5'h06, 5'h05, 5'h07, 5'h04, 5'h07, 5'h06, 5'h0a, 5'h05, 5'h04, 5'h04, 5'h02, 5'h04, 5'h03, 5'h04, 5'h0a, 5'h05, 5'h02, 5'h03, 5'h06, 5'h04, 5'h02, 5'h03, 5'h07, 5'h09, 5'h03, 5'h05, 5'h0c, 5'h07, 5'h02, 5'h03 };
reg [BN3_CH-1:0][BN3_BW_B-1:0] bn3_b = { 17'h1e2b1, 17'h1e906, 17'h1f936, 17'h1ec21, 17'h1f0f4, 17'h001ab, 17'h00837, 17'h1ee27, 17'h1faaa, 17'h1ffac, 17'h1fc9c, 17'h0001c, 17'h1f3f0, 17'h17d25, 17'h0283f, 17'h1d19f, 17'h1f8a5, 17'h01cf1, 17'h1f0ad, 17'h1f9a6, 17'h1f1b1, 17'h03182, 17'h018ec, 17'h0069d, 17'h00e81, 17'h01e0e, 17'h1e9f8, 17'h1e347, 17'h1e2fa, 17'h1f8a0, 17'h00665, 17'h1ffa1, 17'h1e35a, 17'h02bec, 17'h01397, 17'h1f77e, 17'h1bee2, 17'h1f472, 17'h02041, 17'h01934, 17'h16b76, 17'h00df6, 17'h1f8ae, 17'h1f053, 17'h1fb28, 17'h1f96f, 17'h00595, 17'h1f76d, 17'h1cf87, 17'h1e1f6, 17'h0001c, 17'h1eab4, 17'h1df3d, 17'h01e45, 17'h1ead9, 17'h1e7dd, 17'h00359, 17'h01b0e, 17'h1ff81, 17'h1f8d3, 17'h1deb0, 17'h1f817, 17'h1eb97, 17'h1fba0 };

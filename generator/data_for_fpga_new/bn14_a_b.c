#include "bn14_a_b.h"
short * bn14_a_b( short in[BN14_A_B_FILT] ) {
in[0] = (short)(((4*((int)in[0]))+-835) >> 18);
in[0] = in[0] * ( in[0] > 0 );
in[1] = (short)(((3*((int)in[1]))+-2925) >> 18);
in[1] = in[1] * ( in[1] > 0 );
in[2] = (short)(((4*((int)in[2]))+-2949) >> 18);
in[2] = in[2] * ( in[2] > 0 );
in[3] = (short)(((4*((int)in[3]))+-696) >> 18);
in[3] = in[3] * ( in[3] > 0 );
in[4] = (short)(((4*((int)in[4]))+-1505) >> 18);
in[4] = in[4] * ( in[4] > 0 );
in[5] = (short)(((4*((int)in[5]))+-1172) >> 18);
in[5] = in[5] * ( in[5] > 0 );
in[6] = (short)(((5*((int)in[6]))+-2475) >> 18);
in[6] = in[6] * ( in[6] > 0 );
in[7] = (short)(((3*((int)in[7]))+-1987) >> 18);
in[7] = in[7] * ( in[7] > 0 );
in[8] = (short)(((4*((int)in[8]))+-2671) >> 18);
in[8] = in[8] * ( in[8] > 0 );
in[9] = (short)(((5*((int)in[9]))+-2157) >> 18);
in[9] = in[9] * ( in[9] > 0 );
in[10] = (short)(((3*((int)in[10]))+-2372) >> 18);
in[10] = in[10] * ( in[10] > 0 );
in[11] = (short)(((5*((int)in[11]))+-2776) >> 18);
in[11] = in[11] * ( in[11] > 0 );
in[12] = (short)(((4*((int)in[12]))+-1415) >> 18);
in[12] = in[12] * ( in[12] > 0 );
in[13] = (short)(((4*((int)in[13]))+-1093) >> 18);
in[13] = in[13] * ( in[13] > 0 );
in[14] = (short)(((4*((int)in[14]))+-2519) >> 18);
in[14] = in[14] * ( in[14] > 0 );
in[15] = (short)(((4*((int)in[15]))+-561) >> 18);
in[15] = in[15] * ( in[15] > 0 );
in[16] = (short)(((4*((int)in[16]))+-1866) >> 18);
in[16] = in[16] * ( in[16] > 0 );
in[17] = (short)(((4*((int)in[17]))+-1408) >> 18);
in[17] = in[17] * ( in[17] > 0 );
in[18] = (short)(((4*((int)in[18]))+-648) >> 18);
in[18] = in[18] * ( in[18] > 0 );
in[19] = (short)(((6*((int)in[19]))+-852) >> 18);
in[19] = in[19] * ( in[19] > 0 );
in[20] = (short)(((4*((int)in[20]))+-2145) >> 18);
in[20] = in[20] * ( in[20] > 0 );
in[21] = (short)(((4*((int)in[21]))+-1414) >> 18);
in[21] = in[21] * ( in[21] > 0 );
in[22] = (short)(((3*((int)in[22]))+-1477) >> 18);
in[22] = in[22] * ( in[22] > 0 );
in[23] = (short)(((4*((int)in[23]))+-3690) >> 18);
in[23] = in[23] * ( in[23] > 0 );
in[24] = (short)(((4*((int)in[24]))+-1252) >> 18);
in[24] = in[24] * ( in[24] > 0 );
in[25] = (short)(((5*((int)in[25]))+-840) >> 18);
in[25] = in[25] * ( in[25] > 0 );
in[26] = (short)(((6*((int)in[26]))+-1272) >> 18);
in[26] = in[26] * ( in[26] > 0 );
in[27] = (short)(((4*((int)in[27]))+36) >> 18);
in[27] = in[27] * ( in[27] > 0 );
in[28] = (short)(((5*((int)in[28]))+-1113) >> 18);
in[28] = in[28] * ( in[28] > 0 );
in[29] = (short)(((5*((int)in[29]))+-1612) >> 18);
in[29] = in[29] * ( in[29] > 0 );
in[30] = (short)(((4*((int)in[30]))+-1868) >> 18);
in[30] = in[30] * ( in[30] > 0 );
in[31] = (short)(((5*((int)in[31]))+-1717) >> 18);
in[31] = in[31] * ( in[31] > 0 );
in[32] = (short)(((4*((int)in[32]))+-3337) >> 18);
in[32] = in[32] * ( in[32] > 0 );
in[33] = (short)(((3*((int)in[33]))+-2990) >> 18);
in[33] = in[33] * ( in[33] > 0 );
in[34] = (short)(((5*((int)in[34]))+-1500) >> 18);
in[34] = in[34] * ( in[34] > 0 );
in[35] = (short)(((4*((int)in[35]))+-3386) >> 18);
in[35] = in[35] * ( in[35] > 0 );
in[36] = (short)(((4*((int)in[36]))+-3419) >> 18);
in[36] = in[36] * ( in[36] > 0 );
in[37] = (short)(((3*((int)in[37]))+-1919) >> 18);
in[37] = in[37] * ( in[37] > 0 );
in[38] = (short)(((4*((int)in[38]))+-1316) >> 18);
in[38] = in[38] * ( in[38] > 0 );
in[39] = (short)(((5*((int)in[39]))+-1301) >> 18);
in[39] = in[39] * ( in[39] > 0 );
in[40] = (short)(((5*((int)in[40]))+-962) >> 18);
in[40] = in[40] * ( in[40] > 0 );
in[41] = (short)(((4*((int)in[41]))+-1254) >> 18);
in[41] = in[41] * ( in[41] > 0 );
in[42] = (short)(((3*((int)in[42]))+-1383) >> 18);
in[42] = in[42] * ( in[42] > 0 );
in[43] = (short)(((5*((int)in[43]))+-2898) >> 18);
in[43] = in[43] * ( in[43] > 0 );
in[44] = (short)(((3*((int)in[44]))+-655) >> 18);
in[44] = in[44] * ( in[44] > 0 );
in[45] = (short)(((4*((int)in[45]))+-2064) >> 18);
in[45] = in[45] * ( in[45] > 0 );
in[46] = (short)(((4*((int)in[46]))+-1043) >> 18);
in[46] = in[46] * ( in[46] > 0 );
in[47] = (short)(((4*((int)in[47]))+-2232) >> 18);
in[47] = in[47] * ( in[47] > 0 );
in[48] = (short)(((5*((int)in[48]))+-877) >> 18);
in[48] = in[48] * ( in[48] > 0 );
in[49] = (short)(((4*((int)in[49]))+-2861) >> 18);
in[49] = in[49] * ( in[49] > 0 );
in[50] = (short)(((6*((int)in[50]))+-2263) >> 18);
in[50] = in[50] * ( in[50] > 0 );
in[51] = (short)(((4*((int)in[51]))+-1286) >> 18);
in[51] = in[51] * ( in[51] > 0 );
in[52] = (short)(((3*((int)in[52]))+-1062) >> 18);
in[52] = in[52] * ( in[52] > 0 );
in[53] = (short)(((3*((int)in[53]))+-1995) >> 18);
in[53] = in[53] * ( in[53] > 0 );
in[54] = (short)(((4*((int)in[54]))+-897) >> 18);
in[54] = in[54] * ( in[54] > 0 );
in[55] = (short)(((4*((int)in[55]))+-1441) >> 18);
in[55] = in[55] * ( in[55] > 0 );
in[56] = (short)(((6*((int)in[56]))+-2611) >> 18);
in[56] = in[56] * ( in[56] > 0 );
in[57] = (short)(((3*((int)in[57]))+-396) >> 18);
in[57] = in[57] * ( in[57] > 0 );
in[58] = (short)(((5*((int)in[58]))+-3196) >> 18);
in[58] = in[58] * ( in[58] > 0 );
in[59] = (short)(((3*((int)in[59]))+-2343) >> 18);
in[59] = in[59] * ( in[59] > 0 );
in[60] = (short)(((5*((int)in[60]))+-4001) >> 18);
in[60] = in[60] * ( in[60] > 0 );
in[61] = (short)(((4*((int)in[61]))+-1566) >> 18);
in[61] = in[61] * ( in[61] > 0 );
in[62] = (short)(((5*((int)in[62]))+-606) >> 18);
in[62] = in[62] * ( in[62] > 0 );
in[63] = (short)(((4*((int)in[63]))+-622) >> 18);
in[63] = in[63] * ( in[63] > 0 );
return in;
}
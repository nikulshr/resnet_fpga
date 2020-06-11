#include "top.h"

short* pool(short* buf, int size) { // assume stride=2
	int i;
	for (i = 0; i < size; i+=2)
	{
		if (buf[i] < buf[i+1])
			buf[i] = buf[i+1]; // move max to first
		buf[i+1] = 0;
	}
	for (i = 0; i < size; i++)
	{
		if (i < size/2)
			buf[i] = buf[2*i];
		else
			buf[i] = 0;
	}

	return buf;
}

void reset(short* in, short* out) {
	int i;
	for (i = 0; i < MEM_MAX; i++)
	{
		in[i] = out[i];
		out[i] = 0;
	}
}


void top(short in_buf[MEM_MAX], short out_buf[MEM_MAX]) {
	short* in  = in_buf;
	short* out = out_buf;
#pragma HLS array_partition variable=in_buf block factor=64
#pragma HLS array_partition variable=out_buf block factor=64
#pragma HLS resource variable=in_buf core=RAM_T2P_BRAM
#pragma HLS resource variable=out_buf core=RAM_T2P_BRAM

	// Conv 1-18
	int len = SAMPLE_SIZE, j;

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv1(in + j * CH, out + j * CH_MAX);
		  bn1_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv2(in + j * CH_MAX, out + j * CH_MAX);
		  bn2_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv3(in + j * CH_MAX, out + j * CH_MAX);
		  bn3_a_b(out + j * CH_MAX);
	}
	//after every 3 layers...
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv4(in + j * CH_MAX, out + j * CH_MAX);
		  bn4_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv5(in + j * CH_MAX, out + j * CH_MAX);
		  bn5_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv6(in + j * CH_MAX, out + j * CH_MAX);
		  bn6_a_b(out + j * CH_MAX);
	}
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv7(in + j * CH_MAX, out + j * CH_MAX);
		  bn7_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv8(in + j * CH_MAX, out + j * CH_MAX);
		  bn8_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv9(in + j * CH_MAX, out + j * CH_MAX);
		  bn9_a_b(out + j * CH_MAX);
	}
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv10(in + j * CH_MAX, out + j * CH_MAX);
		  bn10_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv11(in + j * CH_MAX, out + j * CH_MAX);
		  bn11_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv12(in + j * CH_MAX, out + j * CH_MAX);
		  bn12_a_b(out + j * CH_MAX);
	}
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv13(in + j * CH_MAX, out + j * CH_MAX);
		  bn13_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv14(in + j * CH_MAX, out + j * CH_MAX);
		  bn14_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv15(in + j * CH_MAX, out + j * CH_MAX);
		  bn15_a_b(out + j * CH_MAX);
	}
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv16(in + j * CH_MAX, out + j * CH_MAX);
		  bn16_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv17(in + j * CH_MAX, out + j * CH_MAX);
		  bn17_a_b(out + j * CH_MAX);
	}
	reset(in, out);

	for(j = 0; j < len - (K - 1); j++) {
#pragma HLS UNROLL
		  conv18(in + j * CH_MAX, out + j * CH_MAX);
		  bn18_a_b(out + j * CH_MAX);
	}
	out = pool(out, len * CH_MAX);
	len /= 2;
	reset(in, out);

	// Dense 19-21
	dense0(in, out);
	reset(in, out);

	dense1(in, out);
	reset(in, out);

	dense2(in, out);
	//reset(in, out);
}


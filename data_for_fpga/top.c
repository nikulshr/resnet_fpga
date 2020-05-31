#include "bn1_a_b.h"
#include "bn10_a_b.h"
#include "bn11_a_b.h"
#include "bn12_a_b.h"
#include "bn13_a_b.h"
#include "bn14_a_b.h"
#include "bn15_a_b.h"
#include "bn16_a_b.h"
#include "bn17_a_b.h"
#include "bn18_a_b.h"
#include "bn2_a_b.h"
#include "bn3_a_b.h"
#include "bn4_a_b.h"
#include "bn5_a_b.h"
#include "bn6_a_b.h"
#include "bn7_a_b.h"
#include "bn8_a_b.h"
#include "bn9_a_b.h"
#include "conv1.h"
#include "conv10.h"
#include "conv11.h"
#include "conv12.h"
#include "conv13.h"
#include "conv14.h"
#include "conv15.h"
#include "conv16.h"
#include "conv17.h"
#include "conv18.h"
#include "conv2.h"
#include "conv3.h"
#include "conv4.h"
#include "conv5.h"
#include "conv6.h"
#include "conv7.h"
#include "conv8.h"
#include "conv9.h"
#include "dense0.h"
#include "dense1.h"
#include "dense2.h"

#define MAX 1024
#define L	18
#define K 	3

short* buffer(short* in, int size) {
	static int call = 0;
	static int win[L] = {0};
	static short mem[L][MAX] = {0};		//fixed to max fit
	int l = call % L;
	short* mem_ref = mem[l];
	for(int i = 0; i < size; i++) {
		mem_ref[win[l]*size+i] = *(in++);
	}
	win[l]++;
	win[l] %= K;
	call++;
	return mem_ref;
}

/*
void top(short* ref, short channels[2]) {
  short  out[MAX] = {0};	//global output memory
  ref = buffer(channels, 2);
  ref = conv1(ref, out);
  ref = bn1_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv2(ref, out);
  ref = bn2_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv3(ref, out);
  ref = bn3_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv4(ref, out);
  ref = bn4_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv5(ref, out);
  ref = bn5_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv6(ref, out);
  ref = bn6_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv7(ref, out);
  ref = bn7_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv8(ref, out);
  ref = bn8_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv9(ref, out);
  ref = bn9_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv10(ref, out);
  ref = bn10_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv11(ref, out);
  ref = bn11_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv12(ref, out);
  ref = bn12_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv13(ref, out);
  ref = bn13_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv14(ref, out);
  ref = bn14_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv15(ref, out);
  ref = bn15_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv16(ref, out);
  ref = bn16_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv17(ref, out);
  ref = bn17_a_b(ref);
  ref = buffer(ref, 64);
  ref = conv18(ref, out);
  ref = bn18_a_b(ref);
  ref = dense0(ref, out);
  ref = dense1(ref, out);
  ref = dense2(ref, out);
}
*/

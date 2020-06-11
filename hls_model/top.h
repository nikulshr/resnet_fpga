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

#define BATCH_SIZE		1
#define SAMPLE_SIZE		1024
#define K 				3
#define CH				2
#define	CH_MAX			64
#define MOD_TYPES   	24
#define MEM_MAX			(SAMPLE_SIZE * CH_MAX)

short* pool(short* buf, int size);
void reset(short* in, short* out);
void top(short in_buf[MEM_MAX], short out_buf[MEM_MAX]);

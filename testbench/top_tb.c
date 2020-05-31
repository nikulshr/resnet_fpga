#include <stdio.h>
#include <stdlib.h>

// move to header
short* buffer(short* in, int size);
//void top(short* ref, short channels[2]);

#define BATCH_SIZE		1
#define STEPS			1024
#define MOD_TYPES   	24
#define MEM_MAX			1024

short quant_sig(double x) {
	x /= 4.0; // assuming range -4.0 to 4.0
	x *= 256.0;
	return (short)((char)x);

}

int main() {

	// Data
	double data[BATCH_SIZE][STEPS][2];
	double a,b;
	char fname[50];
	int num = 0, correct = 0;

	// Execute the following multiple times (multiple transactions)
	for(int mod = 0; mod < MOD_TYPES; mod++) {

		// Load input data from modulation class file
		sprintf(fname, ".\\sample_mod\\sample_mod_%d.txt", mod);
		FILE* fp = fopen(fname, "r");
		if(fp == NULL) {
			printf("File error!\n");
			exit(1);
		}

		int num_data = 0;
		char line[100];

		// no EOF check because files are very large
		int i, j;
		for(i = 0; i < BATCH_SIZE; i++) {
			for(j = 0; j < STEPS; j++) {
				if(!fgets(line, 100, fp)) {
					printf("Reading error!\n");
					i = BATCH_SIZE; j = STEPS; continue; // break inner
				}
				sscanf(line, "%lf\t%lf\n", &a, &b);
				data[i][j][0] = a;
				data[i][j][1] = b;
				num_data++;
			}
			printf("Got batch #%d! %lf %lf ...\n", i, data[0][0][0], data[0][0][1]);
		}
		printf("Modulation type %d over: %d items\n", mod, num_data);
		fclose(fp);

		// Apply network-generated filters
		short  out[MEM_MAX] = {0};
		short* ref = out;
		int read_data = num_data, correct_data = 0;
		for(int i = 0; i < BATCH_SIZE; i++) {
			for(int j = 0; j < STEPS; j++) {
				a = data[i][j][0];
				b = data[i][j][1];
				short channels[2] = {quant_sig(a), quant_sig(b)};
				//top(ref, channels);
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

				// Compare predicted vs expected output (softmax)
				short score = 0, max_score = 0;
				int pred = 0;
				for(int label = 0; label < MOD_TYPES; label++) {
					score = *(ref + label);
					if (score > max_score) {
						max_score = score;
						pred = label;
					}
				}
				correct_data += (pred == mod);
				read_data--;
				if(!read_data)
					continue;
			}
		}

		num += num_data;
		correct += correct_data;
	}

	printf("Correct: %d\n", correct);
	printf("Total: %d\n", num);
	printf("Accuracy: %lf\n", (correct * 1.0 / num * 100.0));
}

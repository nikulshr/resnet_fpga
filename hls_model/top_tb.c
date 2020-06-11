#include "top.h"
#include <stdio.h>
#include <stdlib.h>

#define IN_RANGE(d, m)	(d >= -m && d <= m)

short quant_sig(double x) {
	x /= 4.0;
	x *= 32768.0;
	return (short)(x);
}

void main() {

	// Data
	char fname[50];
	int num = 0, correct = 0;

	// Per modulation class
	for(int mod = 0; mod < MOD_TYPES; mod++) {

		sprintf(fname, ".\\sample_mod\\sample_mod_%d.txt", mod);
		FILE* fp = fopen(fname, "r");
		if(fp == NULL) {
			printf("File error!\n");
			exit(1);
		}

		int i, j;
		for(i = 0; i < BATCH_SIZE; i++) {

			// LOAD INPUT DATA FROM MODULATION CLASS FILE
			double a,b;
			double data[SAMPLE_SIZE][CH];
			char line[100];

			for(j = 0; j < SAMPLE_SIZE; j++) {
				// no EOF check because files are very large
				if(!fgets(line, 100, fp)) {
					// break inner loop
					printf("Reading error!\n");
					j = SAMPLE_SIZE;
					continue;
				}
				sscanf(line, "%lf\t%lf\n", &a, &b);
				data[j][0] = a;
				data[j][1] = b;
			}

			printf("Got sample #%d! %lf %lf ...\n", mod * BATCH_SIZE + i, data[0][0], data[0][1]);

			// APPLY NETWORK-GENERATED FILTERS
			short  in_buf[MEM_MAX]  = {0};	// re-usable
			short  out_buf[MEM_MAX] = {0};	// re-usable

			// Fetch input
			for(j = 0; j < SAMPLE_SIZE; j++) {
				in_buf[CH*j]   = quant_sig(data[j][0]);
				in_buf[CH*j+1] = quant_sig(data[j][1]);
			}

			top(in_buf, out_buf);

			// Compare predicted vs expected output (softmax)
			short score = 0, max_score = 0;
			int pred = 0;
			for(int label = 0; label < MOD_TYPES; label++) {
				score = out_buf[label];
				if (score > max_score) {
					max_score = score;
					pred = label;
				}
			}

			printf("mod = %d, pred = %d\n", mod, pred);

			correct += IN_RANGE(pred - mod, 0);
			num++;
		}
	}

	printf("Correct: %d\n", correct);
	printf("Total: %d\n", num);
	printf("Accuracy: %lf\n", (correct * 1.0 / num * 100.0));
}

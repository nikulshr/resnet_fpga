#include <stdio.h>
#include <stdlib.h>

#define BATCH_SIZE 2

extern void external_function();

int main(){
	double data[BATCH_SIZE][1024][2];
	char fname[50];
	int mod_type = 0;
	double a,b;
	for(; mod_type < 3; mod_type++){
		sprintf(&fname[0],"sample_mod_%d.txt",mod_type);
		FILE *fp = fopen(&fname[0],"r");
		if(fp == NULL){
			printf("File Error!\n");
			break;
		}
		char line[100];
		int batch_number = 1;
		int flag = 1;
		while(!feof(fp)){
			int num_data = 0;
			for (int batch_size = 0; batch_size < 2 && flag; batch_size++){
				for (int index = 0; index < 1024; index++){
					if(!fgets(&line[0], 100, fp)){ // Read 100 characters of 1 byte each
						flag = 0;
						break;
					}
					num_data ++;
					sscanf(line, "%lf\t%lf\n", &a, &b);
					//printf("%lf\t%lf\n",a,b);
					data[batch_size][index][0] = a;
					data[batch_size][index][1] = b;
				}
			}
			printf("%d %d\n", batch_number, num_data);
			batch_number++;
			if(flag)
				external_function(data);
		}
		printf("Modulation Type %d over\n", mod_type);
	}
	return 0;
}
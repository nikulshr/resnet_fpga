#include <stdio.h>
#include <stdlib.h>

void external_function();

void external_function(double data[][1024][2]){
	printf("Got a batch!\n");
	printf("First data: %lf %lf\n", data[0][0][0], data[0][0][1]);
}

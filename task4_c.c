#include <stdio.h>

int asmAVG();
extern int *vector;

void printArray() {
    
    int *pointer = &vector;

    printf("Array: ");

    while (*pointer != 0)
    {
        printf("%d, ", *pointer);
        pointer++;
    }
    printf("%d\n", *pointer);
    
}

int main() {
	printf("Starting the C program... \n");

    printArray();

	printf("\nAvg: %d\n", asmAVG());

	return 0;
}
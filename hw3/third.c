#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char* argv[])
{
	
	int t = atoi(argv[1]);
	unsigned short number = (unsigned short)t;
	unsigned short* firsthalf;
	unsigned short* secondhalf;
	firsthalf = malloc(8*sizeof(unsigned short));
	secondhalf = malloc(8*sizeof(unsigned short));
	unsigned short curr = 0;
	int i, check = 1;
	for(i = 0; i < 8; i++){
		curr = number % 2;
		firsthalf[i] = curr;
		number = number / 2;
	}
	for(i = 0; i < 8; i++){
		curr = number % 2;
		secondhalf[i] = curr;
		number = number / 2;
	}
	for(i = 0; i < 8; i++){
			if(firsthalf[i] != secondhalf[8-i-1]){
				check = 0;
			}
	}
	if(check == 1){
		printf("Is-Palindrome\n");
	}
	else{
		printf("Not-Palindrome\n");
	}
	free(firsthalf);
	free(secondhalf);
}
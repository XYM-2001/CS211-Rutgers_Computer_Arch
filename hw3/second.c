#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int parity(unsigned short x){

	unsigned short temp = x % 2, change = x;
	unsigned short ptr1, ptr2;
	int counter = 0;
	while((change / 2) != 0){
		change = change / 2;
		ptr1 = temp;
		ptr2 = change % 2;
		if(ptr1 == 1 && ptr1 == ptr2){
			counter ++;
			change = change / 2;
		}
		temp = change % 2;
	}
	return(counter);
	
}

int main(int argc, char* argv[])
{

	int pairnumber;
	int t = atoi(argv[1]);
	unsigned short x = (unsigned short)t;
	pairnumber = parity(x);
	int onenumber = 0;
	while(x != 0){
		if((x % 2) == 1){
			onenumber ++;
		}
		x = x / 2;
	}
	if(onenumber % 2 == 0){
		printf("%s\t%d", "Even-Parity", pairnumber);
	}
	else{
		printf("%s\t%d", "Odd-Parity", pairnumber);
	}

}
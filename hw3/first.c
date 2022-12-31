#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h> 

unsigned short get(unsigned short x, unsigned short n){

	unsigned short result = (x & ( 1 << n )) >> n;
	return result;

}
unsigned short comp(unsigned short x, unsigned short n){

	unsigned short result = (x & ( 1 << n )) >> n;
	if(result == 0){
		return (x + pow(2, n));
	}
	else{
		return (x - pow(2, n));
	}
	return 0;
}

unsigned short set(unsigned short x, unsigned short n, unsigned short v){

	unsigned short result = (x & (1 << n)) >> n;
	if(result == 0){
		if(v == 1){
			return (x + pow(2, n));
		}
		else{
			return x;
		}
	}
	else{
		if(v == 0){
			return (x - pow(2, n));
		}
		else{
			return x;
		}
	}
	return 0;
}

int main(int argc, char* argv[])
{

	char command[5];
    unsigned short n=0, v=0;
    unsigned short x;

    FILE* fpoint=fopen(argv[1], "r");

    fscanf(fpoint,"%hu", &x);

    while(fscanf(fpoint,"%s %hu %hu", command, &n, &v)!=EOF){
        if(strcmp(command,"set")==0){
            x=set(x,n,v);
            printf("%hu\n", x);
        }
        else if(strcmp(command,"get")==0){
            int ans = get(x, n);
            printf("%d\n", ans);
        }
        else if(strcmp(command,"comp")==0){
            x = comp(x, n);
            printf("%hu\n", x);
        }
    }

    fclose(fpoint);
    return 0;

}
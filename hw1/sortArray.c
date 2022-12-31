#include <stdio.h>
int main(int argc, char* argv[])
{
	char *name = argv[1];
	FILE *fl = fopen(name,"r");
    int all[21], even[21], odd[21];
    int i = 0;
    while(!feof(fl)){
        if(fscanf(fl, "%d", &all[i++]) != -1){
        }
    }
    int size = i-1;
    fclose(fl);
    int e = 0, o = 0;
    for(i = 1; i <= size; i++){
        if(all[i] % 2 == 0){
            even[e] = all[i];
            e++;
        }
        else{
            odd[o] = all[i];
            o++;
        }
    }
    int p, pivot;
    for(p = 0; p < e; p++){
        pivot = p;
    for(i = p; i < e; i++){
        if(even[i] < even[pivot]){
            pivot = i;
        }
    }
    int temp = even[pivot];
    even[pivot] = even[p];
    even[p] = temp;
    }
    for(p = 0; p < o; p++){
        pivot = p;
        for(i = p; i < o; i++){
            if(odd[i] > odd[pivot]){
                pivot = i;
            }
        }
        int temp = odd[pivot];
        odd[pivot] = odd[p];
        odd[p] = temp;
    }
    for(i = 0; i < e; i ++ ){
        printf("%d\t", even[i]);
    }
    for(i = 0; i < o; i++){
    	printf("%d\t", odd[i]);
    }
}
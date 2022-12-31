#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
#include<math.h> 

typedef struct var{
	int local[513];
}var;

int main(int argc, char** argv) {
  FILE* fp = fopen(argv[1], "r");
  char word[50];
  struct var vars[50];
  char inp[50][50];
  char outp[50][50];
  char temp[50][50];
  int inCount;
  int outCount;
  int tempCount = 0;
  int linesize;
  for(int i = 0; i < 2; i++){
    fscanf(fp, "%s", word);
    if (strcmp(word, "INPUTVAR") == 0) {
      fscanf(fp, "%d", &inCount);
      for (int i  = 0; i < inCount; i++) {
        fscanf(fp, "%s", word);
        strcpy(inp[i], word);
        //printf("%s ", inp[i]);
      }
     //printf(" is input \n");
    }
    if(strcmp(word, "OUTPUTVAR") == 0){
      fscanf(fp, "%d", &outCount);
      for (int i  = 0; i < outCount; i++) {
        fscanf(fp, "%s", word);
        strcpy(outp[i], word);
        //printf("%s ", outp[i]);
      }
          //printf(" is output \n");
    }
  }
  linesize = pow(2, inCount);
  for(int i = 0; i < linesize; i++){// initialize all input local
    int temp = i;
    for(int j = inCount-1; j >= 0; j--){
      vars[j].local[i] = temp%2;
      temp = temp/2;
    }
  }
  int found;
  int outindex;
  int inindex1, inindex2;
  int result[linesize];
  while(fscanf(fp, "%s", word) != EOF) {
    if(strcmp(word, "AND") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 1){
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < inCount; i++){
    			if(strcmp(inp[i], word) == 0){
    				inindex2 = i;
    			}
    		}
    		for(int i = 0; i < linesize; i++){
    			result[i] = vars[inindex1].local[i]*vars[inindex2].local[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < tempCount; i++){
     		if(strcmp(temp[i], word) == 0){
    		    	inindex2 = inCount + outCount + i;
    		    }
    		}
    		for(int i = 0; i < linesize; i++){
    			result[i] = vars[inindex1].local[i]*vars[inindex2].local[i];
    		}
    	}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else if(strcmp(word, "OR") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 1){
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < inCount; i++){
    			if(strcmp(inp[i], word) == 0){
    				inindex2 = i;
    			}
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] > 0){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < tempCount; i++){
     		if(strcmp(temp[i], word) == 0){
    		    	inindex2 = inCount + outCount + i;
    		    }
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] > 0){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else if(strcmp(word, "NAND") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 1){
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < inCount; i++){
    			if(strcmp(inp[i], word) == 0){
    				inindex2 = i;
    			}
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] * vars[inindex2].local[i] > 0){
    				result[i] = 0;
    			}
    			else{
    				result[i] = 1;
    			}
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < tempCount; i++){
     		if(strcmp(temp[i], word) == 0){
    		    	inindex2 = inCount + outCount + i;
    		    }
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] * vars[inindex2].local[i] > 0){
    				result[i] = 0;
    			}
    			else{
    				result[i] = 1;
    			}
    		}
    	}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else if(strcmp(word, "XOR") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 1){
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < inCount; i++){
    			if(strcmp(inp[i], word) == 0){
    				inindex2 = i;
    			}
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] == 1){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < tempCount; i++){
     		if(strcmp(temp[i], word) == 0){
    		    	inindex2 = inCount + outCount + i;
    		    }
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] == 1){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else if(strcmp(word, "NOR") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 1){
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < inCount; i++){
    			if(strcmp(inp[i], word) == 0){
    				inindex2 = i;
    			}
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] == 0){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    		fscanf(fp, "%s", word);
    		for(int i = 0; i < tempCount; i++){
     		if(strcmp(temp[i], word) == 0){
    		    	inindex2 = inCount + outCount + i;
    		    }
    		}
    		for(int i = 0; i < linesize; i++){
    			if(vars[inindex1].local[i] + vars[inindex2].local[i] == 0){
    				result[i] = 1;
    			}
    			else{
    				result[i] = 0;
    			}
    		}
    	}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else if(strcmp(word, "NOT") == 0){
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < inCount; i++){
    		if(strcmp(inp[i], word) == 0){
    			found = 1;
    			inindex1 = i;
    		}
    	}
    	if(found == 0){
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				inindex1 = inCount + outCount + i;
    			}
    		}
    	}
		for(int i = 0; i < linesize; i++){
			if(vars[inindex1].local[i] == 0){
				result[i] = 1;
			}
			else{
				result[i] = 0;
			}
		}
    	found = 0;
    	fscanf(fp, "%s", word);
    	for(int i = 0; i < outCount; i++){
    		if(strcmp(outp[i], word) == 0){
    			outindex = inCount + i;
    			found = 1;
    		}
    	}
    	if(found == 1){
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    	else{
    		for(int i = 0; i < tempCount; i++){
    			if(strcmp(temp[i], word) == 0){
    				found = 1;
    			   outindex = inCount + outCount + i;
    			}
    		}
    		if(found == 0){
    			strcpy(temp[tempCount], word);
    			tempCount += 1;
    			outindex = inCount + outCount + tempCount -1;
    		}
    		for(int i = 0; i < linesize; i++){
    			vars[outindex].local[i] = result[i];
    		}
    	}
    }
    else{
      continue;
    }
  }
  for(int i = 0; i < linesize; i++){
	  for(int j = 0; j < inCount + outCount; j++){
		  printf("%d ", vars[j].local[i]);
	  }
	  printf("\n");
  }
  return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int ax, bx, cx, dx;
int jIfChange;

int mov(char* x,char* y){
	int temp = atoi(x);
	if(temp ==0 && strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			temp = ax;
		}
		else if(strcmp(x, "bx") == 0){
			temp = bx;
		}
		else if(strcmp(x, "cx") == 0){
			temp = cx;
		}
		else if(strcmp(x, "dx") == 0){
			temp = dx;
		}
	}
	if(strcmp(y, "ax") == 10 || strcmp(y,"ax")==0){
		ax = temp;
	}
	else if(strcmp(y, "bx") == 10 || strcmp(y,"bx")==0){
		bx = temp;
	}
	else if(strcmp(y, "cx") == 10 || strcmp(y,"cx")==0){
		cx = temp;
	}
	else if(strcmp(y, "dx") == 10 || strcmp(y,"dx")==0){
		dx = temp;
	}
	return 0;
}
int add(char* x,char* y){
	int left = atoi(x);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
		ax = ax+left;
	}
	else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
		bx = bx+left;
	}
	else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
		cx = cx+left;
	}
	else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
		dx = dx+left;
	}
	return 0;
}
int sub(char* x,char* y){
	int temp = atoi(x);
	if(temp==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			temp = ax;
		}
		else if(strcmp(x, "bx") == 0){
			temp = bx;
		}
		else if(strcmp(x, "cx") == 0){
			temp = cx;
		}
		else if(strcmp(x, "dx") == 0){
			temp = dx;
		}
	}
	if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
		ax = ax-temp;
	}
	else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
		bx = bx-temp;
	}
	else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
		cx = cx-temp;
	}
	else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
		dx = dx-temp;
	}
	return 0;
}
int mul(char* x,char* y){
	int temp = atoi(x);
	if(temp==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			temp = ax;
		}
		else if(strcmp(x, "bx") == 0){
			temp = bx;
		}
		else if(strcmp(x, "cx") == 0){
			temp = cx;
		}
		else if(strcmp(x, "dx") == 0){
			temp = dx;
		}
	}
	if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
		ax = ax*temp;
	}
	else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
		bx = bx*temp;
	}
	else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
		cx = cx*temp;
	}
	else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
		dx = dx*temp;
	}
	return 0;
}
int divi(char* x,char* y){
	int temp = atoi(x);
	if(temp==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			temp = ax;
		}
		else if(strcmp(x, "bx") == 0){
			temp = bx;
		}
		else if(strcmp(x, "cx") == 0){
			temp = cx;
		}
		else if(strcmp(x, "dx") == 0){
			temp = dx;
		}
	}
	if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
		ax = temp/ax;
	}
	else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
		bx = temp/bx;
	}
	else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
		cx = temp/cx;
	}
	else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
		dx = temp/dx;
	}
	return 0;
}
int je(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left==right){
		jIfChange=1;
	}
	return temp;
}
int jne(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left!=right){
		jIfChange=1;
	}
	return temp;
}
int jg(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left>right){
		jIfChange=1;
	}
	return temp;

}
int jge(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left>=right){
		jIfChange=1;
	}
	return temp;
}
int jl(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left<right){
		jIfChange=1;
	}
	return temp;
}
int jle(char* L,char* x,char*y){
	int temp = atoi(L);
	int left = atoi(x);
	int right = atoi(y);
	if(left==0&&strcmp(x,"0")!=0){
		if(strcmp(x, "ax") == 0){
			left = ax;
		}
		else if(strcmp(x, "bx") == 0){
			left = bx;
		}
		else if(strcmp(x, "cx") == 0){
			left = cx;
		}
		else if(strcmp(x, "dx") == 0){
			left = dx;
		}
	}
	if(right==0&&strcmp(y,"0")!=10){
		if(strcmp(y, "ax") == 10||strcmp(y,"ax")==0){
			right = ax;
		}
		else if(strcmp(y, "bx") == 10||strcmp(y,"bx")==0){
			right = bx;
		}
		else if(strcmp(y, "cx") == 10||strcmp(y,"cx")==0){
			right = cx;
		}
		else if(strcmp(y, "dx") == 10||strcmp(y,"dx")==0){
			right = dx;
		}
	}
	if(left<=right){
		jIfChange=1;
	}
	return temp;
}
int main(int argc, char* argv[])
{
	
	char lines[100][100];
	char refresh[100][100];
	FILE* fp=fopen(argv[1], "r");
	if(fp==NULL){
		return 0;
	}
	
	int count = 0;

	while(fgets(lines[count],99,fp)){
		count = count+1;//count=8 for ex2
	}
	for(int i=0;i<100;i++){
		for(int j=0;j<100;j++){
			refresh[i][j]=lines[i][j];
		}
	}
	char* ptr;
	int input;
	// ptr = strtok(lines[0]," ");
	// printf("%s\n", ptr);
	// ptr = strtok(NULL," ");
	// printf("%s\n", ptr);
	// ptr = strtok(NULL," ");
	// printf("%s\n", ptr);
	char* next;
	int num = 0;
	int jnum;
	while(num < count){
		jnum=0;
		jIfChange=0;
		ptr = strtok(lines[num]," ");
		while(strcmp(ptr,"")!=10){
			
			if(strcmp(ptr,"read")==0){
				scanf("%d",&input);
				ptr = strtok(NULL," ");
				char tem[2];
				tem[0] = ptr[0];
				tem[1] = ptr[1];
				if(strcmp(tem, "ax") == 0){
					ax = input;
				}
				else if(strcmp(tem, "bx") == 0){
					bx = input;
				}
				else if(strcmp(tem, "cx") == 0){
					cx = input;
				}
				else if(strcmp(tem, "dx") == 0){
					dx = input;
				}
				break;
			}
			else if(strcmp(ptr,"print")==0){
				ptr = strtok(NULL," ");
				int tem = atoi(ptr);
				if(tem!=0){
					printf("%d",tem);
				}
				else {
					if(strcmp(ptr,"0")==10){
						printf("%d",tem);
					}
					else{
						if(strcmp(ptr,"ax")==10||strcmp(ptr,"ax")==0){
							printf("%d", ax);
						}
						else if(strcmp(ptr,"bx")==10||strcmp(ptr,"bx")==0){
							printf("%d", bx);
						}
						else if(strcmp(ptr,"cx")==10||strcmp(ptr,"cx")==0){
							printf("%d", cx);
						}
						else if(strcmp(ptr,"dx")==10||strcmp(ptr,"dx")==0){
							printf("%d", dx);
						}
					}
				}
				break;
			}
			else if(strcmp(ptr,"mov")==0){
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				mov(x,y);
				break;
			}
			else if(strcmp(ptr,"add")==0){
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				add(x,y);
				break;
			}
			else if(strcmp(ptr,"sub")==0){
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				sub(x,y);
				break;
			}
			else if(strcmp(ptr,"mul")==0){
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				mul(x,y);
				break;
			}
			else if(strcmp(ptr,"div")==0){
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				divi(x,y);
				break;
			}
			else if(strcmp(ptr,"jmp")==0){
				int L = atoi(strtok(NULL," "));
				jIfChange = 1;
				jnum = L;
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"je")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = je(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"jne")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = jne(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"jg")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = jg(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"jge")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = jge(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"jl")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = jl(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
			else if(strcmp(ptr,"jle")==0){
				char* L = strtok(NULL," ");
				char* x = strtok(NULL," ");
				char* y = strtok(NULL," ");
				jnum = jle(L,x,y);
				for(int i=0;i<100;i++){
					for(int j=0;j<100;j++){
						lines[i][j]=refresh[i][j];
					}
				}
				break;
			}
		}
		if(jIfChange==1){
			num = jnum;
		}
		else{
			num = num+1;
		}
	}
	fclose(fp);
	printf("\n");
	return 0;
}

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>


int miss;
int hit;
int mr;
struct line** cache;
unsigned long int count;
int mw;

typedef struct line{

unsigned long int tag;
int valid;
unsigned long int time;

}line;


void readsim(unsigned long int tagindex,unsigned long int setindex,int assoc);
line** createcache(int setnum,int assoc);
void writesim(unsigned long int tagindex,unsigned long int setindex,int assoc);
void empty(int setnum, int assoc);
void readsiml(unsigned long int tagindex,unsigned long int setindex,int assoc);
void writesiml(unsigned long int tagindex,unsigned long int setindex,int assoc);

int main(int argc, char** argv){


  int cachesize=atoi(argv[1]);
  int blocksize=atoi(argv[4]);
  int n;
  int setnum;
  int assoc;

  int b;
  int s;

  char work;
  unsigned long int address;
  unsigned long int setmask;
  unsigned long int tagindex;
  unsigned long int setindex;

if(argv[3][0]=='f'){

  FILE* fl;
  fl=fopen(argv[5],"r");

  if(fl==NULL){

    printf("cannot find tracefile\n");
    return 0;

  }


if(argv[2][0]=='d'){

assoc=1;
setnum=cachesize/blocksize;

}else if(argv[2][5]!=':'){
setnum=1;
assoc=cachesize/blocksize;
}else{

    sscanf(argv[2],"assoc:%d",&n);
    assoc=n;
    setnum=cachesize/blocksize/n;

  }


b=log(blocksize)/log(2);
s=log(setnum)/log(2);

setmask=((1<<s)-1);


cache=createcache(setnum,assoc);


while(fscanf(fl, "%*x: %c %lx", &work, &address)==2){


setindex=(address>>b)&setmask;
tagindex=address>>(b+s);

if(work=='R'){
	
	readsim(tagindex,setindex,assoc);
	
	
	}else if(work=='W'){
		writesim(tagindex,setindex,assoc);
	}


}

fclose(fl);

 printf("Memory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n",mr,mw,hit,miss);


empty(setnum,assoc);



}else if(argv[3][0]=='l'){
	
  FILE* fl;
  fl=fopen(argv[5],"r");

  if(fl==NULL){

    printf("cannot find tracefile with that name\n");
    return 0;

  }


if(argv[2][0]=='d'){

assoc=1;
setnum=cachesize/blocksize;

}else if(argv[2][5]!=':'){
setnum=1;
assoc=cachesize/blocksize;
}else{

    sscanf(argv[2],"assoc:%d",&n);
    assoc=n;
    setnum=cachesize/blocksize/n;

  }


b=log(blocksize)/log(2);
s=log(setnum)/log(2);

setmask=((1<<s)-1);

cache=createcache(setnum,assoc);


while(fscanf(fl, "%*x: %c %lx", &work, &address)==2){


setindex=(address>>b)&setmask;
tagindex=address>>(b+s);


if(work=='R'){
	
	readsiml(tagindex,setindex,assoc);
	
	
	}else if(work=='W'){
		writesiml(tagindex,setindex,assoc);
	}


}

fclose(fl);

 printf("Memory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n",mr,mw,hit,miss);

empty(setnum,assoc);

	}else{
		printf("error policy");
		}
return 0;
}

line** createcache(int setnum,int assoc){
  int i,j;
  cache=(line**)malloc(setnum*sizeof(line*));
  for(i=0;i<setnum;i++){
    cache[i]=(line*)malloc((assoc)*sizeof(line));
  }

  for(i=0;i<setnum;i++){
    for(j=0;j<assoc;j++){
         cache[i][j].valid=0;

    }
  }
  
 


return cache;
}



void readsim(unsigned long int tagindex,unsigned long int setindex,int assoc){

int i,j,min;

for(i=0;i<assoc;i++){
	if(cache[setindex][i].valid==0){
	miss++;
	mr++;
	count++;
	cache[setindex][i].valid=1;
	cache[setindex][i].tag=tagindex;
	cache[setindex][i].time=count;
	
	return;
	}else{
		if(cache[setindex][i].tag==tagindex){
			hit++;
			return;
		}
			
		if(i==(assoc-1)){
			miss++;
			mr++;
			
			min=0;
			for(j=0;j<assoc;j++){
			
			if(cache[setindex][j].time<=cache[setindex][min].time){
				min=j;
			}	
			}
			cache[setindex][min].valid=1;
	        cache[setindex][min].tag=tagindex;
	        count++;
	        cache[setindex][min].time=count;
	        return;
		}
		}
		}
return;

}
void writesim(unsigned long int tagindex,unsigned long int setindex,int assoc){

int i,j,min;

for(i=0;i<assoc;i++){
	if(cache[setindex][i].valid==0){
	miss++;
	mr++;
	mw++;
	count++;
	cache[setindex][i].valid=1;
	cache[setindex][i].tag=tagindex;
	cache[setindex][i].time=count;
	return;
	}else{		
		if(cache[setindex][i].tag==tagindex){
			hit++;
			mw++;
			return;
		}	
		if(i==(assoc-1)){
			miss++;
			mr++;
			mw++;
			min=0;
			for(j=0;j<assoc;j++){
			
			if(cache[setindex][j].time<=cache[setindex][min].time){
				min=j;
			}	
			}
			cache[setindex][min].valid=1;
	        cache[setindex][min].tag=tagindex;
	        count++;
	        cache[setindex][min].time=count;
	        return;
		}
		}	
	}


printf("360 problem");

return;

}

void empty(int setnum, int assoc){
	int i,j;
	for(i=0;i<setnum;i++){
		for(j=0;j<assoc;j++){
			cache[i][j].tag=0;
			cache[i][j].valid=0;
			cache[i][j].time=0;
	}
	}
	miss=0;
	hit=0;
	mr=0;
	mw=0;
	count=0;
}


void readsiml(unsigned long int tagindex,unsigned long int setindex,int assoc){

int i,j,min;
for(i=0;i<assoc;i++){
	if(cache[setindex][i].valid==0){
	miss++;
	mr++;
	count++;
	cache[setindex][i].valid=1;
	cache[setindex][i].tag=tagindex;
	cache[setindex][i].time=count;
	return;
	}else{
		if(cache[setindex][i].tag==tagindex){
			hit++;
			count++;
			cache[setindex][i].time=count;
			return;
		}
		if(i==(assoc-1)){
			miss++;
			mr++;
			min=0;
			for(j=0;j<assoc;j++){
			
			if(cache[setindex][j].time<=cache[setindex][min].time){
				min=j;
			}	
			}
			cache[setindex][min].valid=1;
	        cache[setindex][min].tag=tagindex;
	        count++;
	        cache[setindex][min].time=count;
	        
	        return;
		}
		}
		}

printf("210 problem");

return;

}
void writesiml(unsigned long int tagindex,unsigned long int setindex,int assoc){

int i,j,min;
for(i=0;i<assoc;i++){
	if(cache[setindex][i].valid==0){
	miss++;
	mr++;
	mw++;
	count++;
	cache[setindex][i].valid=1;
	cache[setindex][i].tag=tagindex;
	cache[setindex][i].time=count;
	return;
	}else{
		if(cache[setindex][i].tag==tagindex){
			hit++;
			mw++;
			count++;
			cache[setindex][i].time=count;
			return;
		}
		if(i==(assoc-1)){
			miss++;
			mr++;
			mw++;
			min=0;
			for(j=0;j<assoc;j++){
			if(cache[setindex][j].time<=cache[setindex][min].time){
				min=j;
			}	
			}
			cache[setindex][min].valid=1;
	        cache[setindex][min].tag=tagindex;
	        count++;
	        cache[setindex][min].time=count;
	        return;
		}
		}
		}
printf("360 problem");

return;

}
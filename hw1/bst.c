#include<stdio.h>
#include<stdlib.h>
typedef struct node{
  int data;
  int level;
  struct node* left;
  struct node* right;
}node;

int insert(node* head,int data){

int level=1;
struct node* point=head;
struct node* prev=NULL;
if(head->level==0){//
  head->left=NULL;
  head->right=NULL;
  head->data=data;
  head->level=1;
  return 1;//inserted in level 1;
}
struct node*newnode=(node*)malloc(sizeof(node));
newnode->left=NULL;
newnode->right=NULL;
newnode->data=data;
newnode->level=0;
while(point!=NULL){
if(point->data==newnode->data){
  return 0;//duplicate
}
if(point->data>newnode->data){
  prev=point;
  point=point->left;
  level++;
}else{
  prev=point;
  point=point->right;
  level++;
}
}
newnode->level=level;
if(prev->data>newnode->data){

  prev->left=newnode;
  return newnode->level;
}else{

  prev->right=newnode;

  return newnode->level;
}

}
void inorder(struct node* node){
  if(node == NULL){
    return;
  }
  inorder(node-> left);
  printf("%d\t", node->data);
  inorder(node-> right);
}


int main(int argc,char** argv){

struct node* head=(node*)malloc(sizeof(node));
head->level=0;
FILE * fl=fopen(argv[1],"r");

if(fl==NULL){
  printf("error\n");
  return 0;
}
char op;
int data;
int bi=0;//bi=0: duplicate bi=k(>): insert in level k
int bs=0;//bs=0:not find bs=k(>0): find in level k
while(fscanf(fl,"%c\t%d\n",&op,&data)!=EOF){

if(op=='i'){
bi=insert(head,data);
}
else{
  printf("error\n");
  return 0;
}
}
inorder(head);
return 0;
}
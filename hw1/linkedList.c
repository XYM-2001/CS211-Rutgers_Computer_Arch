#include <stdio.h>
#include<stdlib.h>
typedef struct node{
  int data;
  struct node* next;
}node;

node* newnode(int data,node* head){
  struct node* newnode=malloc(sizeof(node));
  newnode->data=data;
  newnode->next=head;
  return newnode;
}
node* delete(int data,node*head){
  if(head==NULL){
    return head;
  }
  if(head->data==data){
    if(head->next==NULL){
      head=head->next;
      return head;
    }
    head=head->next;
  }
  struct node* point=head->next;
  struct node* prev=head;
  while(point!=NULL){
    if(point->data==data){
      prev->next=point->next;
    }
    prev=point;
    point=point->next;
  }
  return head;
}

node* sort(node *head){
  struct node* point;
  struct node* same;
  struct node* small;
  int temp;
  same=head;
  while(same!=NULL){
    point=same->next;
    small=same;
    while(point!=NULL){
      if(point->data<small->data){
        small=point;
      }
      point=point->next;
    }
    temp=same->data;
    same->data=small->data;
    small->data=temp;
    same=same->next;
  }
  return head;
}

int count(node* head){
  int count=0;
  if(head==NULL){
    return count;
  }
  struct node* point=head;
  while(point!=NULL){
    count++;
    point=point->next;
  }
  return count;
}

int main(int argc, char* argv[])
{

  struct node* head=NULL;
  struct node* point=NULL;
  

  char ch;
  int num;
  int countnum;
  FILE *fp=fopen(argv[1],"r");
  if(fp==NULL){
    printf("error\n");
    return 0;
  }
  while(1){
  
    int n = fscanf(fp,"%c\t%d\n",&ch,&num);
    if (n!=2){
      break;
    }
    if(ch=='i'){
      head=newnode(num,head);
      point = head;
      countnum = count(point);
      if(countnum==0){
      return(0);
      }
      head=sort(head);
      point=head;
      while(point!=NULL){
       point=point->next;
      }
    }else if(ch=='d'){
      head=delete(num,head);
      if(head!=NULL){
        point = head;
        countnum = count(point);
        head=sort(head);
       point=head;
        while(point!=NULL){
         point=point->next;
       }
       }
    }
  }
  
  point=head;
  countnum=count(point);
  if(countnum==0){
    printf("%d\n",countnum);
    return(0);
  }
  printf("%d\n",countnum);
  head=sort(head);
  point=head;
  while(point!=NULL){
    if(point->next!=NULL){
      if(point->data==point->next->data){
        point = point->next;
        continue;
      }
    }
    printf("%d\t",point->data);
    point=point->next;
  }

  fclose(fp);
}


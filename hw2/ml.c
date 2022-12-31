/* 
 * 
 * This code calculates the house price of a house by learing from
 * training data. It uses pseudo inverse of a given matrix to find the 
 * weight of different features.
 * 
 * Predicted Price : Y = W0 + W1*x1 + W2*X2 + W3*X3 + W4*X4
 * Weight Matrix : W = pseudoInv(X)*Y
 * pseudoInv(X) = inverse(transpose(X)*X) * transpose(X)  
 * 
 * weight(w) = pseudoInv(X) * Y
 * 			where	X = Input data matrix
 * 					Y = Target vector
 * 
 */
 
#include<stdio.h>
#include<stdlib.h>

// all methods declarations
double** multiplyMatrix(double **matA, double **matB, int r1, int c1, int r2, int c2);
double** transposeMatrix(double** mat, int row, int col);
double** inverseMatrix(double **matA, int dimention);
double** toone(double** sample, int i, int j,int row,int col);
double** tozero(double** sample, int i, int j,int row,int col);
double** newtozero(double** sample, int i, int j,int row,int col);
double** wcal(double** matrix,double ** Y,int row, int col);
double** sub(double** test, double** w,int row,int col);


// main method starts here
int main(int argc, char** argv){
    int attribnum,casenum,testnum;
    FILE* trainfile;
    trainfile=fopen(argv[1],"r");

    if(trainfile==NULL){

        printf("errorfile\n");
        return 0;

    }
    FILE* testfile;
    testfile=fopen(argv[2],"r");
    if(testfile==NULL){
        printf("errorfile\n");
        return 0;

    }

    fscanf(trainfile,"%d\n",&attribnum);
    fscanf(trainfile,"%d\n",&casenum);
    fscanf(testfile,"%d\n",&testnum);


    int i,j;
    double** trainmatrix=(double**)malloc(casenum*sizeof(double*));
    for(i=0;i<casenum;i++){
        trainmatrix[i]=(double*)malloc((attribnum+1)*sizeof(double));
    }
    double** testmatrix=(double**)malloc(testnum*sizeof(double*));
    for(i=0;i<testnum;i++){
        testmatrix[i]=(double*)malloc((attribnum)*sizeof(double));
    }
    double** Y=(double**)malloc(casenum*sizeof(double*));
    for(i=0;i<casenum;i++){
        Y[i]=(double*)malloc(1*sizeof(double));
    }
    /*double** final=(double**)malloc((attribnum+1)*sizeof(double*));
    for(o=0;o<=attribnum;o++){

        final[o]=(double*)malloc(1*sizeof(double));

    }

    double** finalresult=(double**)malloc(testnum*sizeof(double*));
    for(o=0;o<testnum;o++){
        finalresult[o]=(double*)malloc(1*sizeof(double));
    }*/
    double** final;
    double** finalresult;


    for(i=0;i<casenum;i++){
    for(j=1;j<=attribnum;j++){

        fscanf(trainfile,"%lf%*[,]",&trainmatrix[i][j]);

    }
    fscanf(trainfile,"%lf",&Y[i][0]);
    fscanf(trainfile,"\n");
}
for(i=0;i<casenum;i++){
    trainmatrix[i][0]=1;
}
for(i=0;i<testnum;i++){
    for(j=0;j<attribnum;j++){
        fscanf(testfile,"%lf%*[,]",&testmatrix[i][j]);
    }
    fscanf(testfile,"\n");
}

final=wcal(trainmatrix,Y,casenum,attribnum+1);

finalresult=sub(testmatrix,final,testnum,attribnum);



for(i = 0; i < casenum; i++){
    free(trainmatrix[i]);
}
free(trainmatrix);
for(i = 0; i < testnum; i ++){
    free(testmatrix[i]);
}
free(testmatrix);
for(i = 0; i < testnum; i++){
    free(finalresult[i]);
}
free(finalresult);
for(i = 0; i < casenum; i++){
    free(Y[i]);
}
free(Y);
for(i = 0; i < attribnum+1; i++){
    free(final[i]);
}
free(final);


    return 0;
}


double** sub(double** test, double** w,int row,int col){
    int o,p;
    double num=0;

    double** final=(double**)malloc(row*sizeof(double*));
    for(o=0;o<row;o++){
        final[o]=(double*)malloc(1*sizeof(double));
    }

    for(o=0;o<row;o++){
        num=w[0][0];
        for(p=0;p<col;p++){

            num=num+(test[o][p]*w[p+1][0]);
}
final[o][0]=num;
printf("%0.0lf\n", final[o][0]);
}

return final;
}

double** transposeMatrix(double**mat,int row,int col){
double** matTran=(double**)malloc(col*sizeof(double*));
int i,j;
for(i=0;i<col;i++){
    matTran[i]=(double*)malloc(row*sizeof(double));
}

for(i=0;i<col;i++){
for(j=0;j<row;j++){
matTran[i][j]=mat[j][i];

}


}

return matTran;
}

double** inverseMatrix(double ** matA,int dimention){
double** matI = (double**)malloc(dimention*sizeof(double*));
double** result=(double**)malloc(dimention*sizeof(double*));
int i,j,k,o;
double** a;
for(i=0;i<dimention;i++){
    result[i]=(double*)malloc((dimention*2)*sizeof(double));
}

for(i=0;i<dimention;i++){
    for(j=0;j<dimention;j++){
        result[i][j]=matA[i][j];
    }
}
for(i=0;i<dimention;i++){
    for(j=dimention;j<(dimention*2);j++){
        if(j-dimention==i){
            result[i][j]=1;
        }else{
            result[i][j]=0;
        }

    }
}
for(i=0;i<dimention;i++){
    for(j=0;j<dimention;j++){
        if(i==j){
            a = result;
            result=toone(a,i,j,dimention,dimention*2);
        for(o = 0; o < dimention;o++){
            free(a[o]);
        }
        free(a);
            for(k=i+1;k<dimention;k++){
                a = result;
                result=tozero(result,k,j,dimention,dimention*2);
                for(o = 0; o < dimention; o++){
                    free(a[o]);
                 }
                    free(a);
            }
        }
        }

    }

for(i=dimention-1;i>=0;i--){
    for(j=dimention-1;j>=0;j--){
        if(i!=j&&result[i][j]!=0){
            a = result;
            result=newtozero(result,i,j,dimention,dimention*2);
            for(o = 0; o < dimention; o++){
            free(a[o]);
            }
            free(a);
        }

    }
}

for(i=0;i<dimention;i++){
    matI[i]=(double*)malloc((dimention)*sizeof(double));
}
for(i=0;i<dimention;i++){
    for(j=0;j<dimention;j++){
        matI[i][j]=result[i][j+dimention];
    }
}
for(i = 0; i < dimention; i++){
    free(result[i]);
}
free(result);
return matI;
}

double** toone(double** sample, int i, int j,int row,int col){

    double** mat=(double**)malloc(row*sizeof(double*));
    int o,p;
    for(o=0;o<row;o++){
        mat[o]=(double*)malloc((col)*sizeof(double));
    }

    for(o=0;o<row;o++){
        for(p=0;p<col;p++){
            mat[o][p]=sample[o][p];
        }
    }

double fac;
int k,d;
    if(mat[i][j]==1){
        return mat;
    }else if(mat[i][j]==0){
for(k=1;k<row;k++){
if(mat[k][j]!=0){
    for(d=0;d<col;d++){
        mat[i][d]=mat[i][d]+mat[k][d];
    }
return mat;
}


}
printf("error");
return mat;

    }else{
fac=mat[i][j];
for(k=0;k<col;k++){

mat[i][k]=mat[i][k]/fac;

}

return mat;
    }

printf("error");
return mat;
}
double** tozero(double** sample, int i, int j,int row,int col){
    if(sample[i][j]==0){
        return sample;
    }
    double** mat=(double**)malloc(row*sizeof(double*));
    int o,p;
    for(o=0;o<row;o++){
        mat[o]=(double*)malloc((col)*sizeof(double));
    }

    for(o=0;o<row;o++){
        for(p=0;p<col;p++){
            mat[o][p]=sample[o][p];
        }
    }

double fac=mat[i][j];


    for(p=0;p<col;p++){
mat[i][p]=mat[i][p]/fac;

    }

int k;

    for(k=0;k<col;k++){
        mat[i][k]=mat[i][k]-mat[j][k];
    }


return mat;





}

double** newtozero(double** sample, int i, int j,int row,int col){
    if(sample[i][j]==0){
        return sample;
    }
    double** mat=(double**)malloc(row*sizeof(double*));
    int o,p;
    for(o=0;o<row;o++){
        mat[o]=(double*)malloc((col)*sizeof(double));
    }

    for(o=0;o<row;o++){
        for(p=0;p<col;p++){
            mat[o][p]=sample[o][p];
        }
    }

double fac=mat[i][j];

int k;

    for(k=0;k<col;k++){
        mat[i][k]=mat[i][k]-(mat[j][k]*fac);
    }

return mat;





}

double** multiplyMatrix(double** matA, double** matB,int r1,int c1,int r2, int c2){
    double** result=(double**)malloc(r1*sizeof(double*));
    int o,i,j,k;
    double num=0;
    for(o=0;o<r1;o++){
        result[o]=(double*)malloc((c2)*sizeof(double));
    }
    for(i=0; i<r1;i++){
        for(j=0; j<c2;j++){
            for(k=0; k<r2;k++){
                num=num+matA[i][k]*matB[k][j];

            }
            result[i][j]=num;

            num=0;

        }

    }

    return result;

}



double** wcal(double** mat,double ** Y,int row, int col){
    int o;

    /*double** xt=(double**)malloc(col*sizeof(double*));
    for(o=0;o<col;o++){
        xt[o]=(double*)malloc((row)*sizeof(double));
    }

    double** xinverse=(double**)malloc(col*sizeof(double*));
    for(o=0;o<col;o++){
        xinverse[o]=(double*)malloc((col)*sizeof(double));
    }

    double** xtx=(double**)malloc(col*sizeof(double*));
    for(o=0;o<col;o++){
        xtx[o]=(double*)malloc((col)*sizeof(double));
    }

    double** finalx=(double**)malloc(col*sizeof(double*));
    for(o=0;o<col;o++){
        finalx[o]=(double*)malloc(row*sizeof(double));
    }
    double** finaly=(double**)malloc(col*sizeof(double*));
    for(o=0;o<col;o++){
        finaly[o]=(double*)malloc(1*sizeof(double));
    }*/
    double** xt;
    double** xtx;
    double** xinverse;
    double** finalx;
    double** finaly;

xt=transposeMatrix(mat,row,col);
xtx=multiplyMatrix(xt,mat,col,row,row,col);
xinverse=inverseMatrix(xtx,col);
finalx=multiplyMatrix(xinverse,xt,col,col,col,row);
finaly=multiplyMatrix(finalx,Y,col,row,row,1);
for(o = 0; o < col; o++){
    free(xt[o]);
    free(xinverse[o]);
    free(finalx[o]);
    free(xtx[o]);
}
free(xt);
free(xinverse);
free(finalx);
free(xtx);
return finaly;
}
#include "ecse425projOPT.h"
#include "ecse425proj.h"
#include <stdio.h>
#define chunkSize 32

double solveSet(int chunk, int row, int N, const double *matA, const double *vecB, double *vecC) {
	int indexB;
    	double sumTotal = 0;
	
	for (indexB = 0; indexB < N; indexB++) {
		sumTotal = sumTotal + matA[indexB+row*N+chunk*chunkSize]*vecB[indexB];
		
	}
    	
	
	return sumTotal;
}

void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
    int indexC, chunk;   
	for (chunk = 0; chunk < N/chunkSize; chunk++) {
		for (indexC = 0; indexC < N; indexC++) {
			vecC[indexC] += solveSet(chunk,indexC,chunkSize,matA,vecB,vecC);
    		}
	}
	for (indexC = 0; indexC < N; indexC++) {
		vecC[indexC] += solveSet(chunk,indexC,N%chunkSize,matA,vecB,vecC);
    	}

}


void matMult_opt(int N, const double *matA, const double *matB, double *matC) 
{
	int i, j, k;
    
	int ii, jj, kk;
    int tile_size = 32;

    for(i = 0; i < N; i+= tile_size) {
        for(j = 0; j < N; j+=tile_size) {
            for(k = 0; k < N; k+=tile_size) {

                int iiMin = (i+tile_size) < N ? (i+tile_size) : N;
                for(ii = i; ii < iiMin; ++ii) {

                    int jjMin = (j+tile_size) < N ? (j+tile_size) : N;
                    for(jj = j; jj < jjMin; ++jj) {

                        int kkMin = (k+tile_size) < N ? (k+tile_size) : N;
                        for(kk = k; kk < kkMin; ++kk) {
                            matC[ii*N + jj] += matA[ii*N + kk] * matB[kk*N + jj];
                        }
                    }
                }
            }
        }
    }
	

    
    /*int aIndex, bIndex, cIndex;
    double sumTotal;

    //Allocate memory for the rows of A and C
    double* rowA = (double*) malloc(N * sizeof(double));
    double* rowB = (double*) malloc(N * sizeof(double));

    for (i = 0; i < N; i++) {


        rowA = &matA[i * N];

        for (k = 0; k < N; k++) {

            sumTotal = 0.0;    
            rowB = &matB[k * N];
            double aIK = rowA[k];

            //Sum the products of row indices of A and column indices of B
            for (j = 0; j < N; j++) {                
                
                cIndex = i*N + j;
                matC[cIndex] += aIK * rowB[j];
            }
        }
    }*/    
}

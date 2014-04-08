#include "ecse425projOPT.h"
#include "ecse425proj.h"
#include <stdio.h>
#define chunkSize 2000


void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
    int indexC, chunk, indexB;
    double sumTotal = 0;  
	for (chunk = 0; chunk < N/chunkSize; chunk++) {
		for (indexC = 0; indexC < N; indexC++) {
			sumTotal = 0;
			for (indexB = 0; indexB < chunkSize; indexB++) {
				sumTotal = sumTotal + matA[indexB+indexC*N+chunk*chunkSize]*vecB[indexB+chunk*chunkSize];
			}
			vecC[indexC] += sumTotal;
    		}
	}
	if (N%chunkSize != 0) {
		for (indexC = 0; indexC < N; indexC++) {
			sumTotal = 0;
			for (indexB = 0; indexB < N%chunkSize; indexB++) {
				sumTotal = sumTotal + matA[indexB+indexC*N+chunk*chunkSize]*vecB[indexB+chunk*chunkSize];
			}
			vecC[indexC] += sumTotal;
		}
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

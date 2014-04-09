#include "ecse425projOPT.h"
#include "ecse425proj.h"
#include <stdio.h>
#define chunkSize 2000


void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
   // Initialize Variables
   int indexC, indexB, mulFactor;
   double sumTotal = 0;    

   // Basic Loop
   for (indexC = 0; indexC < N; indexC++) {

	// Reset the parameters
	sumTotal = 0;
	mulFactor = indexC*N;

	// Unroll the second loop a bit.
	for (indexB = 0; indexB < N; indexB += 10) {
		sumTotal = sumTotal + matA[mulFactor+indexB]*vecB[indexB];
		sumTotal = sumTotal + matA[mulFactor+indexB+1]*vecB[indexB+1];
		sumTotal = sumTotal + matA[mulFactor+indexB+2]*vecB[indexB+2];
		sumTotal = sumTotal + matA[mulFactor+indexB+3]*vecB[indexB+3];
		sumTotal = sumTotal + matA[mulFactor+indexB+4]*vecB[indexB+4];
		sumTotal = sumTotal + matA[mulFactor+indexB+5]*vecB[indexB+5];
		sumTotal = sumTotal + matA[mulFactor+indexB+6]*vecB[indexB+6];
		sumTotal = sumTotal + matA[mulFactor+indexB+7]*vecB[indexB+7];
		sumTotal = sumTotal + matA[mulFactor+indexB+8]*vecB[indexB+8];
		sumTotal = sumTotal + matA[mulFactor+indexB+9]*vecB[indexB+9];
	}
	
	// Finish in the case of not an even division of 10
	for (indexB = indexB; indexB < N; indexB++) {
		sumTotal = sumTotal + matA[mulFactor+indexB]*vecB[indexB];
	}

	// Store the result
	vecC[indexC] = sumTotal;
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

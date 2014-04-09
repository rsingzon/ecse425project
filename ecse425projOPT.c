#include "ecse425projOPT.h"
#include "ecse425proj.h"

#include <stdio.h>

void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
    int indexC, indexB;
    double sumTotal = 0;    

    for (indexC = 0; indexC < N; indexC++) {
	sumTotal = 0;

	for (indexB = 0; indexB < N; indexB++) {
		sumTotal = sumTotal + matA[indexC*N+indexB]*vecB[indexB];
	}


	vecC[indexC] = sumTotal;
	
    }
}

void matMult_opt(int N, const double *matA, const double *matB, double *matC) 
{
    //i, j, and k are the indices where the blocks begin
	int i, j, k;    

    //ii, jj, and kk are the indices inside each of the large blocks
	int ii, jj, kk;

    //The tile size was chosen based on experimental data
    int tile_size = 32;

    //Iterate over the outermost indices
    for(i = 0; i < N; i+= tile_size) {
        for(j = 0; j < N; j+=tile_size) {
            for(k = 0; k < N; k+=tile_size) {

                //Determine whether the remaining elements < the tile size
                int iiMin = (i+tile_size) < N ? (i+tile_size) : N;

                //Iterate over the elements inside the tile
                for(ii = i; ii < iiMin; ++ii) {

                    int jjMin = (j+tile_size) < N ? (j+tile_size) : N;
                    for(jj = j; jj < jjMin; ++jj) {

                        int kkMin = (k+tile_size) < N ? (k+tile_size) : N;
                        for(kk = k; kk < kkMin; ++kk) {

                            //Multiply, accumulate, and set the value of the matrix
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

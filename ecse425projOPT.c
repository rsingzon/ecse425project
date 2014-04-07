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
	int i, j, k;
    int aIndex, bIndex, cIndex;
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
                printf("%d ", cIndex);
                matC[cIndex] += aIK * rowB[j];
            }
            printf("\n");
        }
    }    
}

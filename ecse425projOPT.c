#include "ecse425projOPT.h"
#include "ecse425proj.h"

#include <stdio.h>

void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
    
}

void matMult_opt(int N, const double *matA, const double *matB, double *matC) 
{
	int i, j, k;
	int aIndex, bIndex, cIndex;

    //Iterate through rows of A,C, columns of B
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {

        	// Sum total
        	double sumTotal = 0.0;    

        	for (k = 0; k < N; k++){
        		aIndex = i*N + k;
        		bIndex = k*N + j;

        		sumTotal = sumTotal + matA[aIndex] * matB[bIndex];
        	}
               	
        	cIndex = i*N + j;
            matC[cIndex] = sumTotal;
        }
    }
}
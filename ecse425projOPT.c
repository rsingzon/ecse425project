#include "ecse425projOPT.h"
#include "ecse425proj.h"

#include <stdio.h>

void matVecMult_opt(int N, const double *matA, const double *vecB, double *vecC) 
{
    
}

void matMult_opt(int N, const double *matA, const double *matB, double *matC) 
{
	int i, j, k, jj, kk;
	int reuseFactor = 2;
	int aIndex, bIndex, cIndex;
	double aValue;


    // Separate the matrix into smaller chunks
    for (kk = 0; kk < N; kk = kk + reuseFactor) {
        for (jj = 0; jj < N; jj = jj + reuseFactor) {
        	for (i = 0; i < N; i++){

        		int kMin;
        		if ( (kk + reuseFactor - 1) < N ){
        			kMin = kk + reuseFactor - 1;
        		}
        		else{
        			kMin = N;
        		}

        		for (k = kk; k <= kMin; k++){
        			aIndex = i*N + k;
        			aValue = matA[aIndex];
        			

        			int jMin;
        			if ( (jj + reuseFactor - 1) < N){
        				jMin = jj + reuseFactor -1;
        			}
        			else{
        				jMin = N;
        			}

        			for(j = jj; j < jMin; j++){
        				bIndex = k*N + j;
        				cIndex = i*N + j;

        			//	printf("Index: %d\n", bIndex);

        				matC[cIndex] += aValue * matB[bIndex];
        			}
        		}
        	}
        //	printf("break\n");
        }
    }
        	
/*
	for(i = 0; i < N; i++){
		for(j = 0; j < N; j++){
			


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
    */
}
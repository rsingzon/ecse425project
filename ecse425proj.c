#include "ecse425proj.h"

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* Specify the data layout format */
const DLayout dlayout = RowMaj;

void randInitialize(int sz, double *vPtr)
{
    int i;
    for (i = 0; i < sz; i++)
        vPtr[i] = drand48();
}

void displayVec(int sz, const double *vPtr)
{
    if(dlayout == RowMaj)
    {
        int i;
        printf("[");
        for (i = 0; i < sz; i++)
        {
            printf("%e",vPtr[i]);
            if(i < sz-1)
                printf(",");
            else
                printf("]");
        }
    }
}

void displayMat(int rows, int cols, const double *vPtr)
{
    if(dlayout == RowMaj)
    {
        int i;
        printf("[\n");
        for (i = 0; i < rows; i++) {
            displayVec(cols, &vPtr[i*rows]);
            printf("\n");
        }
        printf("]");
    }
}

void matMult(int N, const double *matA, const double *matB, double *matC)
{
    if(dlayout == RowMaj)
    {
	int i, cIndex, columnNum, rowNum, aIndex, bIndex;
	double sumTotal;

	// Iterate along the indices of matC
	for (cIndex = 0; cIndex < N*N; cIndex++) {
		// Re-Initialize sumTotal		
		sumTotal = 0;

		// Decode the Index to find the appropriate Column and Row
		columnNum = cIndex % N;
		rowNum = cIndex/N;

		for (i = 0; i < N; i++) {
			// Recalculate the indices for A and B arrays
			aIndex = N*rowNum + i;
			bIndex = columnNum+i*N;
			
			//printf(" indexA: %d, indexB: %d \n", aIndex,bIndex);

			// Sum up the next iteration of multiplication
			sumTotal = sumTotal + matA[aIndex]*matB[bIndex];
		}
		
		// Place final answer in appropriate place
		matC[cIndex] = sumTotal;
	}
    }

}

void matVecMult(int N, const double *matA, const double *vecB, double *vecC)
{
    if(dlayout == RowMaj)
    {
        int rowCount = 0;
        int colCount = 0;

        //Loop through rows 
        while(rowCount < N){
            
            //Reset column index
            colCount = 0;

            //Loop through the columns
            while(colCount < N){

                //Multiply and accumulate
                int matIndex = rowCount * N + colCount;
                vecC[rowCount] = vecC[rowCount] + matA[matIndex] * vecB[colCount];
                
                colCount++;
            }
            rowCount++;
        }
    }
}

double compareVecs(int N, const double *src, const double *ref)
{
    double ds = 0., ss = 0.;
    int i;
    for(i = 0; i < N; i++)
    {
        ds += (src[i] - ref[i]) * (src[i] - ref[i]);
        ss += ref[i] * ref[i];
    }
    ss = ds/ss;
    printf("Error SQUARED is: %e\n",ss);
    return ss;
}

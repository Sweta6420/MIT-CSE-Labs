#include "mpi.h"
#include <stdio.h>

int main(int argc, char * argv[])
{
	int rank,size,fact=1,factsum,i;
	MPI_Init(&argc,&argv);
	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Comm_size(MPI_COMM_WORLD,&size);
	for(i=1; i<=rank+1; i++) fact *=i;
	MPI_Reduce(&fact,&factsum,1,MPI_INT,MPI_SUM,0,MPI_COMM_WORLD);
	if(rank==0) printf("Sum of all factorial: %d",factsum);
	MPI_Finalize();
}
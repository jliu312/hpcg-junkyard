#! /bin/bash

export NUM_PROCESSES=$1
cd My_MPI_OpenMP
../configure My_MPI_OMP
make
cd bin
export OMP_NUM_THREADS=$2
mpiexec -np $NUM_PROCESSES ./xhpcg

echo cd My_MPI_OpenMP/bin for results

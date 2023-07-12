#! /bin/bash

export NUM_PROCESSES=$1
cd /home/user/hpcg/My_MPI_OpenMP
/home/user/hpcg/configure My_MPI_OMP
make
cd /home/user/hpcg/My_MPI_OpenMP/bin
export OMP_NUM_THREADS=$2
mpiexec -np $NUM_PROCESSES ./xhpcg

echo cd My_MPI_OpenMP/bin for results

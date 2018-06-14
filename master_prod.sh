#!/bin/bash

dir=~/production/front_driven_python_delet_wedge

L=300.0
w0=142.0

diff=0.0
seed=1
s=-0.06

D=4.0
sbatch $dir/run_prod.sh $D $diff $s $seed

D=6.0
#sbatch $dir/run_prod.sh $D $diff $s $seed

D=7.0
#sbatch $dir/run_prod.sh $D $diff $s $seed

D=8.0
#sbatch $dir/run_prod.sh $D $diff $s $seed

D=9.0
#sbatch $dir/run_prod.sh $D $diff $s $seed

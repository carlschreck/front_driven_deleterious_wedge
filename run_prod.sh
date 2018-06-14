#!/bin/bash

#SBATCH -p shared
#SBATCH -n 1
#SBATCH -t 10:00:00
#SBATCH -J FDM
#SBATCH -C haswell

# Set directories
rundir=~/production/front_driven_python_delet_wedge
outdir=/global/cscratch1/sd/cschreck/front_driven_python_delet_wedge
 
# input parameters
D=$1
L=$2 #300.0
w0=$3 #142.0
diam=1.0
ndis=4
diff=$4
steps=600000
skipb=500
skiph=5000
dh0=0.001
s=$5
seed=$6
trials=1

# output file names
suff=L${L}_D${D}_s${s}_diff${diff}_seed${seed}.dat
fileb=bound_$suff
fileh=front_$suff

cd $outdir

python $rundir/front_driven_prod.py <<EOF
  $D
  $L
  $w0
  $diam
  $ndis
  $diff
  $steps
  $skipb
  $skiph
  $dh0
  $s
  $seed
  $trials
  '$fileb'
  '$fileh'
EOF

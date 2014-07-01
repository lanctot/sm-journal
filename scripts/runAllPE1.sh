#!/bin/bash
module add parallel
module add jdk-7

GAME="PE 1 15 pursuit_simple10x10.txt"
#PBS_JOBID=id398572

cd /storage/home/lisyvili/sm-journal

uname -a > ${PBS_JOBID}.hw

for p1 in DOAB OOS RAND MCTS-UCT MCTS-EXP3 MCTS-RM; do
for p2 in DOAB OOS RAND MCTS-UCT MCTS-EXP3 MCTS-RM; do
  echo "./runOne.sh $p1 $p2 $GAME | grep MATCH > ${p1}_${p2}_${GAME// /_}_${PBS_JOBID}.log"
done
done | parallel -j 10

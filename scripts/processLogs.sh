#!/bin/bash

GAME="Tron 1 A 13 13"

echo " DOAB OOS MCTS-UCT MCTS-EXP3 MCTS-RM RAND"
for p1 in DOAB OOS MCTS-UCT MCTS-EXP3 MCTS-RM RAND; do
echo -n "${p1}"
for p2 in DOAB OOS MCTS-UCT MCTS-EXP3 MCTS-RM RAND; do
  echo -n " "
  cat ${p1}_${p2}_${GAME// /_}*.log | sed 's/.* \([0-9.\-]*\)$/\1/' | ../stats.sh | tr -d '\n'
done
echo
done

#!/bin/bash

awk '{for(i=1;i<=NF;i++) {sum[i] += $i; sumsq[i] += ($i)^2}} 
          END {for (i=1;i<=NF;i++) {
          printf "%.2f(%.2f)",sum[i]/NR, sqrt((sumsq[i]-sum[i]^2/NR)/NR/sqrt(NR))}
         }'

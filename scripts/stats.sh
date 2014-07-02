#!/bin/bash

awk '{for(i=1;i<=NF;i++) {sum[i] += (1+$i)/2; sumsq[i] += ((1+$i)/2)^2}} 
          END {for (i=1;i<=NF;i++) {
          printf "%.1f(%.1f)",100*sum[i]/NR, 100*1.96*sqrt((sumsq[i]-sum[i]^2/NR)/NR)/sqrt(NR)}
         }'

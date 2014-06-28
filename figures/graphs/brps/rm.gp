set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'rm.tex'
set key out vert
set key right
set title 'Exploitability of MCTS-RM in Biased RPS'
set xlabel 'Iteration'
set yrange [0:0.11]
set xrange [100000:105000000]
plot "mcts-rm-c0.5.dat" using 1:2 with linespoints lt 1 lw 3 title '$\gamma=0.5$', \
     "mcts-rm-c0.3.dat" using 1:2 with linespoints lt 3 lw 3 title '$\gamma=0.3$', \
     "mcts-rm-c0.2.dat" using 1:2 with linespoints lt 4 lw 3 title '$\gamma=0.2$', \
     "mcts-rm-c0.1.dat" using 1:2 with linespoints lt 5 lw 3 title '$\gamma=0.1$', \
     "mcts-rm-c0.05.dat" using 1:2 with linespoints lt 6 lw 3 title '$\gamma=0.05$', \
     "mcts-rm-c0.01.dat" using 1:2 with linespoints lt 7 lw 3 title '$\gamma=0.01$', \
     "mcts-rm-c0.001.dat" using 1:2 with linespoints lt 8 lw 3 title '$\gamma=0.001$'


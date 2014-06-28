set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'duct.tex'
set key out vert
set key right
set title 'Exploitability of MCTS-UCT in Biased RPS'
set xlabel 'Iteration'
set xrange [100000:105000000]
set yrange [0.0:]
plot "mcts-uct-c2.0.dat" using 1:2 with linespoints lt 1 lw 3 title '$C=2.0$', \
     "mcts-uct-c1.8.dat" using 1:2 with linespoints lt 3 lw 3 title '$C=1.8$', \
     "mcts-uct-c1.6.dat" using 1:2 with linespoints lt 4 lw 3 title '$C=1.6$', \
     "mcts-uct-c1.4.dat" using 1:2 with linespoints lt 5 lw 3 title '$C=1.4$', \
     "mcts-uct-c1.2.dat" using 1:2 with linespoints lt 6 lw 3 title '$C=1.2$', \
     "mcts-uct-c1.0.dat" using 1:2 with linespoints lt 7 lw 3 title '$C=1.0$', \
     "mcts-uct-c0.8.dat" using 1:2 with linespoints lt 8 lw 3 title '$C=0.8$', \
     "mcts-uct-c0.6.dat" using 1:2 with linespoints lt 9 lw 3 title '$C=0.6$', \
     "mcts-uct-c0.4.dat" using 1:2 with linespoints lt 10 lw 3 title '$C=0.4$', \
     "mcts-uct-c0.2.dat" using 1:2 with linespoints lt 11 lw 3 title '$C=0.2$', \
     "mcts-uct-c0.0.dat" using 1:2 with linespoints lt 12 lw 3 title '$C=0.0$',



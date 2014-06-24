set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'exp3.tex'
set key out vert
set key right
set title 'Exploitability of MCTS-Exp3 in Biased Rock, Paper, Scissors'
set xlabel 'Iteration'
set ylabel 'Exploitability'
set xrange [100000:105000000]
plot "mcts-exp3-c0.5.dat" using 1:2 with linespoints lt 1 lw 3 title '$\gamma=0.5$', \
     "mcts-exp3-c0.3.dat" using 1:2 with linespoints lt 3 lw 3 title '$\gamma=0.3$', \
     "mcts-exp3-c0.2.dat" using 1:2 with linespoints lt 4 lw 3 title '$\gamma=0.2$', \
     "mcts-exp3-c0.1.dat" using 1:2 with linespoints lt 5 lw 3 title '$\gamma=0.1$', \
     "mcts-exp3-c0.01.dat" using 1:2 with linespoints lt 7 lw 3 title '$\gamma=0.01$', \
     "mcts-exp3-c0.001.dat" using 1:2 with linespoints lt 8 lw 3 title '$\gamma=0.001$'


set term png
set output "graph1.png"
set grid  xtics ytics
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "titulek"
set xlabel "xxx"
set ylabel "yyyy"

plot "data" using 1:2 title 'legenda' with line
# magia negra
set encoding utf8
set term pdfcairo enhanced color
set output "graf_r3.pdf"

# aqui define o nome do arquivo de saída
set key at 0.5, 0.9

set xrange [0:1]
set yrange [0:1]

set xlabel 'x'
set ylabel 'G(x)' 
f(x) = x

set title "Mapa logistico"
plot "mapar3.dat" u 1:2 w l lc 4  t "Mapa logístico p/ r = 3, x_i = 0.2",\
    f(x) w l t "x = x"
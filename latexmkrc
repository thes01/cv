$makeindex = "texindy %O -I latex --language czech --codepage latin2 -o %D %S";
$pdflatex = "pdflatex --shell-escape %O %S"
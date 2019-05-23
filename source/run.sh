BASE="${1%.*}"
pdflatex $BASE.tex
if [ $? -ne 0 ]; then
    echo "Compilation error. Check log."
    exit 1
fi
biber $BASE
pdflatex $BASE.tex
pdflatex $BASE.tex
exit 0
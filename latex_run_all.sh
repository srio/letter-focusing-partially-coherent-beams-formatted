rm OSA-journal-template.pdf
#rm figures/fig1.pdf
#rm figures/fig2.pdf
#rm figures/fig4.pdf

#./fig1.sh
#./fig2.sh
#./fig4.sh

pdflatex OSA-journal-template.tex
bibtex OSA-journal-template
sleep 1.0
pdflatex OSA-journal-template.tex
pdflatex OSA-journal-template.tex

okular OSA-journal-template.pdf


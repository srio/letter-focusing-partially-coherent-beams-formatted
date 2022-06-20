#
# script to create the ArXiv submission
#
# please be sure that you run pdflatex main.tex in the main directory
# before running the script, so main.bbl and the *pdf files are created


#
# after running the script, do (bu hand):
#
# \documentclass[preprint]{iucr}
# remove all "figures/"
# remove all "\twocolumns"
# change width in doubleslit figure
#    a)~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\newline
#    \includegraphics[width=0.490\textwidth]{doubleslit_scan.pdf}    etc
#


cd /users/srio/Documents/letter-focusing-partially-coherent-beams-formatted
rm -rf ARXIV
mkdir ARXIV
cd ARXIV
cp ../template_arxiv.tex ./template.tex

#cp ../sample.bib .
cp ../jabbrv-ltwa-all.ldf .
cp ../jabbrv-ltwa-en.ldf .
cp ../jabbrv-ltwa-en.ldf .
cp ../osajnl.cls .
cp ../jabbrv.sty .
cp ../OSA-journal-template.bbl template.bbl
mkdir legacy-styles
cp ../legacy-styles/ol.sty legacy-styles

#cp ../iucr.cls .
#cp ../iucr.bst .

cp ../OSA-journal-template.bbl ./template.bbl

mkdir figures
cd figures

cp ../../figures/evolution-eps-converted-to.pdf .
cp ../../figures/H_0.png .
cp ../../figures/V_0.png .
cp ../../figures/H_1.png .
cp ../../figures/V_1.png .
cp ../../figures/H_2.png .
cp ../../figures/V_2.png .
cp ../../figures/H_3.png .
cp ../../figures/V_3.png .
cp ../../figures/sizes_h-eps-converted-to.pdf .
cp ../../figures/sizes_v-eps-converted-to.pdf .


cd ..

#cp ../harvard.sty .
# cp ../main.bbl .
# cp ../macros.tex .

#cp main.tex main.tex.orig

# biblio
# sed -e "s.^\\\\bibliography{references}.\\\\input{main\.bbl}." main.tex -i
#sed -e "s.\\\\bibliographystyle.\\% \\\\bibliographystyle.g" main.tex -i
#sed -e "s.^\\\\bibliography{references}.\\% \\\\bibliography{references}." main.tex -i
#sed -e "s.^\\\\end{document}.\\% \\\\end{document}." main.tex -i
#cat ../main.bbl >> main.tex
#echo "\end{document}" >> main.tex



pdflatex template.tex
sleep 1.0
pdflatex template.tex
pdflatex template.tex

okular template.pdf


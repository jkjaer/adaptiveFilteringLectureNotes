##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
PS=$(TEX:.tex=.ps)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.out *.thm *.tdo *.auxlock figures/*.dpth figures/*.log *.figlist

pdflatex: lecture_notes.tex
	pdflatex -shell-escape -synctex=1 lecture_notes.tex
	bibtex lecture_notes
	pdflatex -shell-escape  -synctex=1 lecture_notes.tex
	pdflatex -shell-escape  -synctex=1 lecture_notes.tex
	cp lecture_notes.pdf lecture_notes.screen.pdf 
	rm -f $(OTHER) $(PS)
print: lecture_notes.tex
	pdflatex -shell-escape  -synctex=1 '\newcommand{\type}{print}\input{lecture_notes.tex}'
	bibtex lecture_notes
	pdflatex -shell-escape  -synctex=1 '\newcommand{\type}{print}\input{lecture_notes.tex}'
	pdflatex -shell-escape  -synctex=1 '\newcommand{\type}{print}\input{lecture_notes.tex}'
	rm -f $(OTHER) $(PS)
	cp lecture_notes.pdf lecture_notes.print.pdf 
#figure: lecture_notes.tex
#	pdflatex -shell-escape -jobname=figures/$(figname) lecture_notes.tex #--shell-escape enables calls to external programs such as gnuplot
#	(cd figures && rm -f $(OTHER) *.table *.gnuplot *.log)
clean:
	rm -f $(OTHER) $(PS)

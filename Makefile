all: eskthesis.tex eskthesis.bbl
	pdflatex eskthesis.tex
	pdflatex eskthesis.tex

eskthesis.bbl: mybib.bib
	bibtex eskthesis
	bibtex eskthesis

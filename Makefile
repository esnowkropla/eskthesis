# Sample Makefile
# $Id: Makefile 387 2012-11-12 15:11:48Z vlado $

THESIS_NAME=eskthesis

help:
	@echo make all

.PHONY: all

all: glossary
	latex $(THESIS_NAME).tex
	latex $(THESIS_NAME).tex
	bibtex $(THESIS_NAME)
	latex $(THESIS_NAME)
	dvips -t letter eskthesis.dvi -o eskthesis.ps
	pdflatex eskthesis.tex

body:
	latex $(THESIS_NAME).tex

glossary: tex/glossary.tex
	latex $(THESIS_NAME).tex
	makeindex -s $(THESIS_NAME) -o $(THESIS_NAME).gls $(THESIS_NAME).glo

bibliography:
	latex $(THESIS_NAME).tex
	bibtex $(THESIS_NAME)

clean:
	-rm *.dvi *.aux *.bbl *.blg *.log *.toc *.lof *.lot *.glo *.gls *.ist *.ilg

spotless: clean
	-rm *.pdf


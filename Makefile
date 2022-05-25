#
# Makefile of QDUBachelor-TeX
#

MAIN_TEX = main
MAIN_BIB = main
OFFSET_COVER = offset-cover

build:
	xelatex $(MAIN_TEX).tex
	bibtex $(MAIN_BIB)
	xelatex $(MAIN_TEX).tex
	xelatex $(MAIN_TEX).tex

clean: cleanpdf
	rm -f ./*.aux ./*.bbl ./*.blg ./*.log ./*.out ./*.toc

cleanpdf:
	rm -f ./*.pdf

viewpdf:
	xdg-open *.pdf

build-preview: build viewpdf

offset-cover:
	xelatex $(OFFSET_COVER).tex
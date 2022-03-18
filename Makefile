MAIN_TEXNAME = main
MAIN_BIBNAME = main

build:
	xelatex $(MAIN_TEXNAME).tex > /dev/null
	bibtex $(MAIN_BIBNAME) > /dev/null
	xelatex $(MAIN_TEXNAME).tex > /dev/null
	xelatex $(MAIN_TEXNAME).tex > /dev/null

clean: cleanpdf
	rm -f ./*.aux ./*.bbl ./*.blg ./*.log ./*.out ./*.toc

cleanpdf:
	rm -f ./*.pdf

viewpdf:
	xdg-open *.pdf > /dev/null

build-preview: build viewpdf

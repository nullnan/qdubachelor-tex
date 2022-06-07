#
# Makefile of QDUBachelor-TeX
#
REPO_NAME = qdubachelor-tex

MAIN_TEX = main
MAIN_BIB = main
OFFSET_COVER = offset-cover

REPO_URL = https://github.com/chardon55/$(REPO_NAME).git

build:
	xelatex $(MAIN_TEX).tex
	bibtex $(MAIN_BIB)
	xelatex $(MAIN_TEX).tex
	xelatex $(MAIN_TEX).tex
	@echo 'Done'

clean: cleanpdf
	@rm -f ./*.aux ./*.bbl ./*.blg ./*.log ./*.out ./*.toc
	@echo 'Temporary files cleaned'

cleanpdf:
	@rm -f ./*.pdf
	@echo 'PDF cleaned'

viewpdf:
	@xdg-open *.pdf

build-preview: build viewpdf

offset-cover:
	xelatex $(OFFSET_COVER).tex
	@echo 'Done'

upgrade: clean
	@git clone $(REPO_URL)

	@mv -vf ./$(REPO_NAME)/qdubachelor.cls ./
	@mv -vf ./$(REPO_NAME)/qdubachelor-offset-cover.cls ./
	@mv -vf ./$(REPO_NAME)/bstutf8.bst ./
	@mv -vf ./$(REPO_NAME)/qdu-logo.kra ./
	@mv -vf ./$(REPO_NAME)/.github ./
	@mv -vf ./$(REPO_NAME)/figures ./
	@mv -vf ./$(REPO_NAME)/README.md ./
	@mv -vf ./$(REPO_NAME)/LICENSE ./
	@mv -vf ./$(REPO_NAME)/Makefile ./

	@rm -vrf ./$(REPO_NAME)
	@echo 'All essential files upgraded'
# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

DOCS=capability.pdf case_for_support.pdf justification.pdf gantt.pdf \
	 first_sketch.pdf
BIB=dash.bib
CSL=default.csl

PANDOC_CMD=pandoc --data-dir . --citeproc

docs: $(DOCS)

%.pdf: %.tex
	xelatex $<

%.pdf: %.md $(BIB) $(CSL)
	$(PANDOC_CMD) $< -o $@

%.docx: %.md $(BIB) $(CSL)
	$(PANDOC_CMD) $< -o $@

clean:
	rm *.pdf

.PHONY: docs clean

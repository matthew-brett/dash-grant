# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

DOCS=capability.pdf case_for_support.pdf justification.pdf gantt.pdf \
	 first_sketch.pdf
BIB=dash.bib
CSL=default.csl

docs: $(DOCS)

%.pdf: %.tex
	xelatex $<

%.pdf: %.md $(BIB) $(CSL)
	pandoc --data-dir . --citeproc $< -o $@

clean:
	rm *.pdf

.PHONY: docs clean

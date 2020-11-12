# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

DOCS=capability.pdf case_for_support.pdf justification.pdf gantt.pdf

docs: $(DOCS)

%.pdf: %.tex
	xelatex $<

%.pdf: %.md
	pandoc --filter pandoc-citeproc $< -o $@

clean:
	rm *.pdf

.PHONY: docs clean

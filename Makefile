gantt: gantt.pdf

%.pdf: %.tex
	xelatex $<

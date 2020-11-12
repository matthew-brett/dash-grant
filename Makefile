GANTT_FNAME=gantt.tex

gantt: $(GANTT_TEX)
	xelatex $@

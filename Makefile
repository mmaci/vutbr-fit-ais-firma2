NOOUT=1>/dev/null 2>&1
PDFVIEWER=atril

.PHONY: clean doc.pdf view edit clean

all: doc.pdf

doc.pdf: doc.tex
	pdflatex -shell-escape doc.tex $(NOOUT)
	pdflatex doc.tex $(NOOUT)

view:
	$(PDFVIEWER) doc.pdf $(NOOUT)

edit:
	gedit *.tex $(NOOUT) &

clean:
	rm -f *.log *.blg *.bbl *.toc *.aux *.out *.lot *.lof img/*.pdf *.dvi

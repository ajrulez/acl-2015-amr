amr-ner-plus-plus.pdf: $(wildcard *.tex) ref.bib Makefile
	@pdflatex amr-ner-plus-plus
	@bibtex amr-ner-plus-plus
	@pdflatex amr-ner-plus-plus
	@pdflatex amr-ner-plus-plus

clean:
	rm -f *.aux *.log *.bbl *.blg amr-ner-plus-plus.pdf *.bak *.ps *.dvi

fast:
	@pdflatex amr-ner-plus-plus

default: amr-ner-plus-plus.pdf

.PHONY: all clean view

all: main.pdf

main.pdf: main.tex
	latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" -use-make main.tex

clean:
	latexmk -CA
	rm -f main.pdf

view: main.pdf
	open main.pdf

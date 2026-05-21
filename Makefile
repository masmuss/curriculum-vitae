.PHONY: help all clean view

help:
	@echo "Usage:"
	@echo "  make        Show this help"
	@echo "  make build  Compile main.pdf from main.tex"
	@echo "  make view   Open the generated PDF"
	@echo "  make clean  Remove all build artifacts"

all: help

build: main.pdf

main.pdf: main.tex
	latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" -use-make main.tex

clean:
	latexmk -CA
	rm -f main.pdf

view: main.pdf
	open main.pdf

TEX_FILES := main.tex preamble.tex sections/*.tex

.PHONY: help all clean view format

help:
	@echo "Usage:"
	@echo "  make         Show this help"
	@echo "  make build   Compile main.pdf from main.tex"
	@echo "  make view    Open the generated PDF"
	@echo "  make format  Format all .tex files with latexindent"
	@echo "  make clean   Remove all build artifacts"

all: help

build: main.pdf

main.pdf: main.tex
	latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" -use-make main.tex

format:
	latexindent -s -w $(TEX_FILES)

clean:
	latexmk -CA
	rm -f main.pdf
	find . -name "*.bak*" -delete

view: main.pdf
	open main.pdf

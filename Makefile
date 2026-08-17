TEX_FILES := $(shell find . -name "*.tex")

.PHONY: help all clean view format

help:
	@echo "Usage:"
	@echo "  make         Show this help"
	@echo "  make watch   Watch for changes and compile main.pdf"
	@echo "  make build   Compile main.pdf from main.tex"
	@echo "  make view    Open the generated PDF"
	@echo "  make format  Format all .tex files with latexindent"
	@echo "  make clean   Remove all build artifacts"

all: help

build: main.pdf

main.pdf: main.tex
	latexmk -pdf -interaction=nonstopmode main.tex

watch: main.tex
	latexmk -pvc -pdf -interaction=nonstopmode main.tex

format:
	latexindent -s -w $(TEX_FILES)

clean:
	latexmk -CA
	rm -f main.pdf
	find . -type f \( -name "*.bak*" -o -name "*.log" -o -name "*.aux" --name "*.fls" --name "*.fdb_latexmk" \) -delete

view: main.pdf
	open -a Preview main.pdf

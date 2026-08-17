# Curriculum Vitae

LaTeX-based CV of **Ahmad Musafir Khoirul Fattah** — full-stack developer with a strong backend focus across web, mobile, and IoT-enabled solutions.

## Usage

```sh
make build    # compile main.pdf
make watch    # compile and watch for changes
make view     # open the PDF
make format   # format all .tex files with latexindent
make clean    # remove build artifacts
```

Requires a LaTeX distribution (MacTeX, TeX Live, BasicTeX, etc.) with `latexmk` (uses `pdflatex`) and `latexindent` for formatting.

## Project Structure

```
.
├── main.tex                          # entry point
├── preamble.tex                      # packages, settings, custom environments
├── sections/                         # content per section
│   ├── header.tex
│   ├── summary.tex
│   ├── technical-skills.tex
│   ├── professional-experience.tex
│   ├── selected-projects.tex
│   ├── leadership-and-organization.tex
│   └── education.tex
├── .github/workflows/                # CI: auto-build PDF on push
├── .latexindent.yaml                 # formatter config
├── Makefile
└── README.md
```

## CI

Every push to `main` auto-builds the PDF via GitHub Actions, uploads it as a workflow artifact, and publishes it to a GitHub Release tagged `latest`.

## License

MIT

# Curriculum Vitae

LaTeX-based CV of **Ahmad Musafir Khoirul Fattah** — full-stack developer with experience in web, mobile, and IoT-enabled solutions.

## Usage

```sh
make build   # compile main.pdf
make view    # open the PDF
make clean   # remove build artifacts
```

Requires a LaTeX distribution (MacTeX, TeX Live, etc.) with `latexmk` and `lualatex`.

## Project Structure

```
.
├── main.tex              # entry point
├── preamble.tex          # packages, settings, custom environments
├── sections/             # content per section
│   ├── header.tex
│   ├── summary.tex
│   ├── education.tex
│   ├── experience.tex
│   ├── projects.tex
│   ├── tools.tex
│   └── languages.tex
├── .github/workflows/    # CI: auto-build PDF on push
├── Makefile
└── README.md
```

## CI

Every push to `main` auto-builds the PDF via GitHub Actions. The artifact is available in the workflow run.

## License

MIT

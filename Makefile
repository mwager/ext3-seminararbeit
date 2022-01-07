NAME=documentation

all:
	pdflatex -interaction=nonstopmode $(NAME) || true
	#biber $(NAME)
	bibtex $(NAME)
	pdflatex -interaction=nonstopmode -halt-on-error $(NAME)

clean:
	rm -f $(NAME).pdf
	find . -name "*-blx.bib" -type f -delete
	find . -name "*..run.xml" -type f -delete
	find . -name "*.7z" -type f -delete
	find . -name "*.aux" -type f -delete
	find . -name "*.bbl" -type f -delete
	find . -name "*.blg" -type f -delete
	find . -name "*.fdb_latexmk" -type f -delete
	find . -name "*.fls" -type f -delete
	find . -name "*.lof" -type f -delete
	find . -name "*.log" -type f -delete
	find . -name "*.lot" -type f -delete
	find . -name "*.out" -type f -delete
	find . -name "*.run.xml" -type f -delete
	find . -name "*.synctex.gz" -type f -delete
	find . -name "*.toc" -type f -delete
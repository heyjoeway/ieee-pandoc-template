FILES = paper.md \
		metadata.yaml

OUTPUT = build

FLAGS = \
		-s \
		--bibliography=bibliography.bib \
		--csl=bibliography.csl \
		-f markdown \
		--filter pandoc-crossref \
		--citeproc \


FLAGS_PDF = --template=template.latex

all: pdf

pdf:
	pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*


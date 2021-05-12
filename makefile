BIBLIOGRAPHY = bibliography.bib
CSL = bibliography.csl
PAPER = paper.md
METADATA = metadata.yaml
TEMPLATE = template.latex
OUT_DIR = build
OUT_FNAME = paper.pdf

FLAGS = \
		-s \
		--bibliography=$(BIBLIOGRAPHY) \
		--csl=$(CSL) \
		-f markdown \
		--filter pandoc-crossref \
		--citeproc \
		--template=$(TEMPLATE)

all: $(OUT_DIR)/$(OUT_FNAME)

$(OUT_DIR)/$(OUT_FNAME): $(BIBLIOGRAPHY) $(TEMPLATE) $(CSL) $(PAPER) $(METADATA)
	pandoc -o $(OUT_DIR)/$(OUT_FNAME) $(FLAGS) $(PAPER) $(METADATA)

clean:
	rm build/*
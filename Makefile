.PHONY: all html pdf clean

SLIDES := index
FORMATS := pdf html

all: $(FORMATS)

html:
	marp $(SLIDES).md --html --allow-local-files -o $(SLIDES).html

dev:
	marp $(SLIDES).md --html --allow-local-files -o $(SLIDES).html --watch

pdf:
	marp $(SLIDES).md --pdf --allow-local-files -o $(SLIDES).pdf

clean:
	rm -f $(SLIDES).pdf $(SLIDES).html

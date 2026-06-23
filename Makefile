.PHONY: all html pdf clean

SLIDES := index
FORMATS := pdf html

all: $(FORMATS)

html:
	marp $(SLIDES).md --html --allow-local-files -o $(SLIDES).html
	sed -i 's#</style>#</style><script defer data-domain="pre-seed.tributary.so" src="https://p.chainsquad.com/js/script.js"></script>#' index.html

dev:
	marp $(SLIDES).md --html --allow-local-files -o $(SLIDES).html --watch

pdf:
	marp $(SLIDES).md --pdf --allow-local-files -o $(SLIDES).pdf

clean:
	rm -f $(SLIDES).pdf $(SLIDES).html

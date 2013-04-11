
all: wiki

wiki: grundlagen.dokuwiki

grundlagen.dokuwiki:
	html2wiki --no-wrap-in-html --dialect DokuWiki grundlagen.html | sponge grundlagen.dokuwiki

clean:
	rm -f grundlagen.dokuwiki

.PHONY: all clean wiki
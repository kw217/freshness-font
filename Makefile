all:

install:
	mkdir -p $(HOME)/texmf/fonts/source/public/fresh/
	cp *.mf $(HOME)/texmf/fonts/source/public/fresh/
	mkdir -p $(HOME)/texmf/tex/latex/misc/
	cp fresh.sty ufresh.fd $(HOME)/texmf/tex/latex/misc/

dist: clean
	cd ..; tar zcvf fresh/fresh.tar.gz fresh --exclude CVS --exclude fresh.tar.gz

clean:
	rm -f *~ *.aux *.log *pk *gf *.dvi *.tfm fresh.tar.gz

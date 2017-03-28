main:
	xelatex main
	bibtex main
	xelatex main
	xelatex main

clean:
	git clean -dfX

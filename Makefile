main:
	xelatex main.tex
	bibtex data/kaitibaogao.aux
	mv data/kaitibaogao.bbl main.bbl
	xelatex main.tex
	xelatex main.tex

clean:
	git clean -dfX

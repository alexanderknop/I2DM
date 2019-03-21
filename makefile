compile:
	rm -rf tmp
	mkdir tmp
	pdflatex --output-directory tmp main.tex
	makeindex tmp/main.nlo -s nomencl.ist -o tmp/main.nls
	pdflatex --output-directory tmp main.tex
	cp tmp/main.pdf I2DM.pdf
	#rm -rf tmp

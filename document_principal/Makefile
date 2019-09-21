MAIN=main.tex
NAME=Guide-en-Actuariat
SHELL:=/bin/bash

all: # Call: make
	latexmk -pdf $(MAIN) -jobname="$(NAME)" # Will compile the document


clean: # Call: make clean 
	rm *.aux *.log *.fls *.fdb_latexmk *.toc *.out

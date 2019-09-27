## ========================================================
## Makefile pour facilier la compilation d'un projet LaTeX
## Gabriel Crépeault-Cauchon
## Dernière maj	: 18/09/2019
## 
## UTILISATION
## indiquer dans la variable MAINFILE le nom
## de votre fichier .tex principal de votre projet. Le
## Makefile est bâti de telle sorte que le MAINFILE ne 
## contient aucun chunk Sweave. Ce fichier importe (avec la
## commande \include{}) des sous-fichiers .tex et .Rnw
##
## COMMANDES À UTILISER
## make : alias pour make all
## make all : compilation du projet en entier. Valide si des
## modifications ont été apportés dans tous les types de 
## fichiers
## make tex : recompile les fichiers .Rnw (vers .tex) qui
## on été modifiés
## make pdf : recompile uniquement le fichier .tex principal
## make clean : enlève les fichiers inutiles du projet
## make view : ouvre le fichier .pdf généré par LaTeX
## ========================================================
SHELL:=/bin/bash
MAINFILE = Guide-en-Actuariat
RNWFILES = $(addsuffix .Rnw,$(filter-out $(basename ${MAINFILE}), $(basename $(wildcard *.Rnw))))
TEXFILES = $(addsuffix .tex,$(filter-out $(basename ${RNWFILES} ${MAINFILE}),$(basename $(wildcard *.tex))))



all: pdf

pdf: $(MAINFILE).pdf

tex: ${RNWFILES:.Rnw=.tex} 

%.tex: %.Rnw
	R CMD Sweave --encoding="utf-8" '$<'

$(MAINFILE).pdf: $(MAINFILE).tex ${RNWFILES:.Rnw=.tex} ${TEXFILES}
	latexmk -pdf '$<'

clean:
	latexmk -c
	rm -f *~ \#* .Rhistory
	rm -f $(MAINFILE).bbl

view:
	open $(MAINFILE).pdf

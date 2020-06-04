# Makefile pour mettre à jour d'un coup toutes les feuilles aide-mémoire ayant été modifiées
# Gabriel Crépeault-Cauchon
# 9 décembre 2019

TEXPREAMBLE = cheatsht-preamble-general
TEXTEMPLATE = cheatsht-template
TEXFILES = $(filter-out $(basename ${TEXPREAMBLE} ${TEXTEMPLATE}),$(basename $(wildcard *.tex)))


all: pdf

pdf: ${TEXFILES}.pdf

${TEXFILES}.pdf: ${TEXFILES}.tex
	latexmk -pdf '$<'


clean:
	latexmk -c
	rm -f *~ \#* .Rhistory
	rm -f *.bbl
	rm -f *.synctex.gz

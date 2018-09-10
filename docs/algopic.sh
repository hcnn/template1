#!/bin/bash

filename=algopic

pdflatex "${filename}.tex" 
#pdftocairo -svg "${filename}.pdf" "${filename}.svg"
pdftocairo -png "${filename}.pdf" "${filename}"

rm "${filename}.aux"
rm "${filename}.log"
rm "${filename}.pdf"


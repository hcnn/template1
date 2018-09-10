#!/bin/bash

filename=algopic

pdflatex "${filename}.tex" 
pdftocairo -svg "${filename}.pdf" "${filename}.svg"

rm "${filename}.aux"
rm "${filename}.log"
rm "${filename}.pdf"


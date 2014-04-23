#!/bin/bash

set -ex

PYGMENTIZE=${PYGMENTIZE-pygmentize}

STYLES=$($PYGMENTIZE -L styles | perl -nle'/^* (.*):$/ && print $1')

$PYGMENTIZE -l c -f latex -P "verboptions=frame=none" -o cexample.tex cexample.c

$PYGMENTIZE -l gas -f latex -P "verboptions=frame=none" -o asmexample.tex asmexample.s

for style in $STYLES
do
    echo $style
    $PYGMENTIZE -S $style -f latex > style.tex
    echo "\\newcommand{\\stylename}{$style}" >> style.tex
    pdflatex doc
    mv doc.pdf doc-$style.pdf
done

pdftk doc-*.pdf output doc.pdf
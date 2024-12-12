#!/usr/bin/env perl
$kanji = defined $ENV{"LATEXENC"} ? "-kanji=$ENV{\"LATEXENC\"}" : "-kanji=utf8" ;
$latex  = "uplatex %O $kanji -no-guess-input-enc -shell-escape -synctex=1 -interaction=nonstopmode %S";
$pdflatex  = "ptex2pdf -l -u  -ot '$kanji -no-guess-input-enc -shell-escape -synctex=1 -interaction=nonstopmode' %S";
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3; # $latex -> $dvipdfmx
$pdf_update_method = 3;

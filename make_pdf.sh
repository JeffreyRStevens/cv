#!/bin/bash

sed '1{/^---$/!q;};1,/^---$/d' index.md > cv.md
cat header.md cv.md > README.md
pandoc -s cv.md -c media/cv-print.css -c media/academicons.min.css -c media/font-awesome.min.css -t html -V margin-top=15 -V margin-left=15 -V margin-right=15 -V margin-bottom=15 -V papersize=letter -o cv.pdf

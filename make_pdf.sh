#!/bin/bash

sed '1{/^---$/!q;};1,/^---$/d' index.md > cv.md
sed '/PDF Version/d' cv.md > cv_pdf.md
cat header.md cv_pdf.md > README.md
pandoc -s cv_pdf.md -c media/cv-print.css -c media/academicons.min.css -c media/font-awesome.min.css -t html -V margin-top=15 -V margin-left=15 -V margin-right=15 -V margin-bottom=15 -V papersize=letter -o cv.pdf

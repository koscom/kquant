find . -name "*.qmd"  -exec rm -rf {} \;
qpydoc -p api -l ko_KR -f favicon.ico kquant
quarto render api

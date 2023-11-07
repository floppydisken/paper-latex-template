watch: 
	latexmk -ps -pvc -pdf -interaction=nonstopmode main.tex

count:
	CHARS=$$(texcount -0 -sum -merge -char main.tex); \
	WORDS=$$(texcount -0 -sum -merge main.tex); \
	echo "Tegn uden mellemrum: $$CHARS"; \
	echo "Ord (mellemrum): $$WORDS"; \
	PRG=$$(python3 -c "print($$CHARS/2400)"); \
	echo "Normalsider:  $$PRG"

SHELL=/bin/zsh
ALL=$(patsubst %.org,%.html,$(wildcard *.org))

.PHONY: all
all: ${ALL}

%.html: %-tmp.html
	echo "---" > $@;\
  echo "layout: ejercicios" >> $@;\
	echo "title: Ejercicio de Precipitaciones" >> $@;\
	echo "---" >> $@;\
	sed -n '/body/,/\/body/{/body>/d;p}' $< >> $@

%-tmp.html: %.org
	emacs --batch $< --eval '(org-html-export-to-html)';\
	mv $*.html $@
	

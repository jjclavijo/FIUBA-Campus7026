SHELL=/bin/zsh

ejercicio.html: extremos.html
	echo "---" > $@;\
  echo "layout: ejercicios" >> $@;\
	echo "title: Ejercicio Valores Extremos" >> $@;\
	echo "---" >> $@;\
	sed -n '/body/,/\/body/{/body>/d;p}' $< >> $@

%.html: %.org
	emacs --batch $< --eval '(org-html-export-to-html)'

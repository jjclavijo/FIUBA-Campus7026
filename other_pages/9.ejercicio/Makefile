SHELL=/bin/zsh

ejercicio.html: evt.html
	echo "---" > $@;\
  echo "layout: ejercicios" >> $@;\
	echo "title: Ejercicio Evapotranspiración" >> $@;\
	echo "---" >> $@;\
	sed -n '/body/,/\/body/{/body>/d;p}' $< >> $@

%.html: %.org
	emacs --batch $< --eval '(org-html-export-to-html)'

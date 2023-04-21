SHELL=/bin/zsh

ejercicio.html: ciclo.html
	echo "---" > $@;\
  echo "layout: ejercicios" >> $@;\
	echo "title: Ejercicio Propiedades del agua" >> $@;\
	echo "---" >> $@;\
	sed -n '/body/,/\/body/{/body>/d;p}' $< >> $@

ciclo.html: ciclo.org
	emacs --batch ciclo.org --eval '(org-html-export-to-html)'

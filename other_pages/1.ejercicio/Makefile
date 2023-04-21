SHELL=/bin/zsh

ejercicio.html: tmp.html
	echo "---" > $@;\
	echo "layout = ejercicios" >> $@;\
	echo "title = Ejercicio Propiedades del agua" >> $@;\
	echo "---" >> $@;\
	cat $< >> $@;\

tmp.html: ciclo.org
	pandoc -f org -t html --katex -o $@ $< 

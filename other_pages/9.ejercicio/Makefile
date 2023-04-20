SHELL=/bin/zsh

%-tmp.org: %.org
	echo "#+BEGIN_EXPORT html" > $@;\
	echo "<div id=\"main-div\">" >> $@;\
	echo "#+END_EXPORT" >> $@;\
	cat $< >> $@;\
	echo "#+BEGIN_EXPORT html" >> $@;\
	echo '</div>' >> $@
	echo "#+END_EXPORT" >> $@;\

ejercicios9.html: tp3-tmp.org
	pandoc -s -f org -t html -H head.html -o $@ $< --mathjax --metadata title="70.26 Hidráulica Agriola y Saneamiento"

%.html: %-tmp.org
	pandoc -s -f org -t html -H head.html -o $@ $< --mathjax --metadata title="70.26 Hidráulica Agriola y Saneamiento"

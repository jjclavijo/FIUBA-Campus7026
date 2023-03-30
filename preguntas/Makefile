define NEWLINE


endef

%.html: %.org
	/bin/emacs $< --batch -f org-html-export-to-html --kill

%-index.html: %.html
	sed "/<\/style>/ i\${NEWLINE}  #table-of-contents {visibility: collapse; height: 0px}" $< > $@

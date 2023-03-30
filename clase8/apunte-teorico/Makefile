.PHONY: prepare
prepare: media base.org
	cp base.org apunte.org

media: ../teorico.docx
	unzip ../teorico.docx "word/media/*";\
	mv word/media .;\
	rm -r word

base.org: ../teorico.docx
	pandoc -t org -f docx $< -o $@
	sed -i 's/\.\.\/media/.\/media/g' $@

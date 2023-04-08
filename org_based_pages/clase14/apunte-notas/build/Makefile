../slides.org: ../../make_org/slides.org
	cp $< $@

apunte.org: ../slides.org pre.awk
	awk -f pre.awk $< > $@

C14-Notas.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C14-Notas.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


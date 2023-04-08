../slides.org: ../../make_org1/slides.org
	cp $< $@

apunte.org: ../slides.org pre.awk
	awk -f pre.awk $< > $@

C13-Notas.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C13-Notas.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


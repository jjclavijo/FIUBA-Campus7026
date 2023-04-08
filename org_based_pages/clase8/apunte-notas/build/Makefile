apunte.org: ../slides.org pre.awk
	awk -f pre.awk $< > $@

C8-Notas.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C8-Notas.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


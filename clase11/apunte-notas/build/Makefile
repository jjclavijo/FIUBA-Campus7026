apunte.org: ../slides.org pre.awk
	awk -f pre.awk $< > $@

C11-Notas.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C11-Notas.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


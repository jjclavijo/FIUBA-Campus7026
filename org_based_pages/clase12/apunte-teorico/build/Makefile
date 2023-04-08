apunte.org: ../apunte.org pre.awk
	awk -f pre.awk $< > $@

C12-Teorico.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C12-Teorico.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


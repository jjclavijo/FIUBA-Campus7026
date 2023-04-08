apunte.org: ../apunte.org pre.awk
	awk -f pre.awk $< > $@

C14-Teorico.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C14-Teorico.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


apunte.org: ../apunte.org pre.awk
	awk -f pre.awk $< > $@

C13-Teorico.pdf: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -o $@

C13-Teorico.tex: apunte.org
	pandoc -t latex --pdf-engine xelatex -f org $< -s -o $@


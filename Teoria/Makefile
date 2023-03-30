teoria.html: teoria.md.m4 styles.css
	m4 -DxNAME="teoria" -DxFILE="teoria.md.m4" template.html.m4 > $@

teoria.md.m4: teoria.md
	cp start.md.m4 $@
	sed -E '{N;/.+\n.+\n.+/b sigue;N;:sigue /:::.*\n.*\n:::.*collapsible/b para;P;D};:para {s/:::\s+::: \{.collapsible\}$$/xCOL/}' teoria.md >> $@

%.html: %.md styles.%.css
	m4 -DxNAME="$*" -DxFILE="$*.md" template.html.m4 > $@

clean:
	@rm -rf teoria.md.m4 teoria.html portada.html

portada.html: portada.md.m4 styles.css
	m4 -DxFILE="portada.md.m4" template.html.m4 > $@

portada.md.m4: portada.md
	cp start.md.m4 $@
	sed -E '{N;/.+\n.+\n.+/b sigue;N;:sigue /:::.*\n.*\n:::.*collapsible/b para;P;D};:para {s/:::\s+::: \{.collapsible\}$$/xCOL/}' portada.md >> $@

clean:
	@rm -rf portada.md.m4 portada.html

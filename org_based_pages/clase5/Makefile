SHELL:=/bin/zsh
NOS=$(shell unzip -l Riego_Aforos_2020.pptx | sed -n 's/.*ppt\/slides\/slide\([0-9]*\).xml/\1/p' | sort -g)
mkfile_path := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))

table_list := $(shell for i in zip/ppt/slides/slide*xml;\
		  do xmllint --format $$i |\
                     awk 'BEGIN{a=1};/<a:tbl>/{printf "%02d\n",a; a++}' |\
                     sed "s/^/$${$${$$(basename $${i})#slide}%%.*}-/";\
		  done)

show:
	echo $(patsubst %, tmp-slides/slide%.tmp.txt ,${NOS})
	echo ${table_list}

.PHONY: tmpfiles
tmpfiles: $(patsubst %, tmp-slides/slide%.tmp.txt ,${NOS}) $(patsubst %, tmp-slides/slide%.tmp.sed ,${NOS})

.PHONY: tmpslides
tmpslides: tmpfiles
	${MAKE} $(patsubst %, tmp-slides/slide%.txt ,${NOS})

.PHONY: pngtables
pngtables: $(patsubst %, media/table.%.png ,${table_list})

.PHONY: pdftables
pdftables: $(patsubst %, media/table.%.pdf ,${table_list})

.PHONY: htmltables
htmltables: $(patsubst %, media/table.%.html ,${table_list})

.PHONY: orgfile
orgfile: tmpslides
	cp tplt/slides_h.org slides.org
	for i in $(patsubst %, tmp-slides/slide%.txt ,${NOS});\
		do python add_slide.py $$i slides.org;\
	        done

tmp-slides: 
	mkdir tmp-slides

tmp-slides/slide%.tmp.txt : zip/ppt/slides/slide%.xml tmp-slides
	xmllint --format $< | grep -E 'a:t>|a:off|a:tbl>|a:tc[>\ ]|a:tr[>\ ]|embed=|descr=' > $@
	
tmp-slides/slide%.tmp.sed : zip/ppt/slides/_rels/slide%.xml.rels tmp-slides
	xmllint --format $< | sed -nE 's/\//\\\//g ; s/.*Id="([^"]*)".*Target="([^"]*)".*/\s\/\.\*\1\.\*\/[[\2\]]\//p' > $@

tmp-slides/slide%.txt : tmp-slides/slide%.tmp.txt tmp-slides/slide%.tmp.sed 
	read in sedf <<< "$^" ;\
	sed -f $$sedf $$in > $@

tmp-slides/slide%.tables.html: tmp-slides/slide%.txt
	sed -n '/a:tbl/,/\/a:tbl/ {s/a:tbl/table/;s/a:tc/td/;s/a:tr/tr/;s/a:t/p/g;/hMerge/ {N;d};/vMerge/ {N;d};s/gridSpan/colspan/;/table/,/\/tr/ {s/td/th/};p}' \
           $< | tr '\240\302' '  ' |\
	sed -n ':recur /<tr[^>]*>/ {N; />[[:space:]]*[^[:space:]<]\+/ b out; /<\/tr>/ {d; b out}; b recur};:out p' > $@.tmp;\
	cat tplt/tabla.html.top $@.tmp tplt/tabla.html.bottom > $@;\
	rm -rf $@.tmp

# Need reformatting.
media/s%tables: tmp-slides/slide%.tables.html
	mkdir $@;\
	cp $< $@;\
	cd $@;\
	csplit $(shell basename $<) '/<table>/' '{*}';\
	for i in xx*;\
	do sed -n -i '/<table>/,/<\/table>/ p' $$i;\
	[ -s $$i ] && cat "${mkfile_path}/tplt/tabla.html.top" $$i "${mkfile_path}/tplt/tabla.html.bottom" > table.$$(echo $$i | sed 's/xx/$*-/').html ;\
	done

media/table.%.html:
	${MAKE} media/s$(shell echo $* | sed 's/-.*//')tables
	cd media;\
	ln -s s$(shell echo $* | sed 's/-.*//')tables/table.$*.html

media/table.%.pdf.uncrop: media/table.%.html
	wkhtmltopdf $< $@

media/table.%.pdf: media/table.%.pdf.uncrop
	pdfcrop $< $@

media/table.%.png: media/table.%.pdf
	pdftocairo -png -singlefile $< $(shell echo $@ | sed 's/.png//')

zip: notas.pptx
	mkdir zip
	cd zip ;\
	unzip ../$@

notas.pptx: notas.ppt
	loffice --convert-to pptx $<

clean-html-tables:
	rm -rf media/s*tables media/table.*.html

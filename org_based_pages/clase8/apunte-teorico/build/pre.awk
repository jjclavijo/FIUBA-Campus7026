/^::: minipages/,/^:*$/ {
if ($0 ~ /^::: minipages/) {
	env = $2;
	pwid = $3;
	imwid = $4/$3;
	printf "#+BEGIN_EXPORT latex\n";
	printf "\\begin{figure}\n\\null", env pwid;
	accum = 0
	alpie = ""
	}
else
if ($1 == "#+CAPTION:") {
	$1 = "";
	caption = $0
	}
else
if ($1 ~ /^\[\[.*/) {
	accum = accum + pwid
	if (accum >= 1) {
		accum = 0
		printf "\\hfill\\null\\\\\n\\vspace{0.2cm}\n\\\\\\null"
		}
	path = substr($0,3,length($0)-4)
	printf "\\hfill\\begin{minipage}{%s\\textwidth}\n", pwid;
	printf "\\null\\hfill\\includegraphics[width=%s\\textwidth,height=%s\\textwidth]{%s}\\hfill\\null\n", imwid, imwid, path
	if ( caption != "" )
	printf "\\caption{%s}\n", substr(caption,2,length(caption))
	printf "\\end{minipage}";
	}
else
if ($0 ~ /^:*$/) {
	if (alpie != ""){
		printf "\\hfill\\null\n"
		printf "\\begin{minipage}{\\textwidth}\n\\vspace{0.5cm}\n"
		printf "\\begin{center}"
		print alpie
		printf "\\end{center}\n"
		printf "\\end{minipage}\n"
		printf "\\end{figure}\n"
		}
	else
	print "\\hfill\\null\n\\end{figure}\n"
	printf "#+END_EXPORT\n";
	}
else
if ($0 ~ /^#.*$/) {
	next
	}
else
	alpie = alpie "\n" $0
next
}
{ print }


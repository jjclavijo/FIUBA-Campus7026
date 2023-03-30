/^::: minipages\s/,/^:*$/ {
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
		printf "\\hfill"
		printf "\\begin{minipage}{%s\\textwidth}\n\\vspace{0.5cm}\n", pwid;
		printf "\\begin{center}"
		# Crear un archivo temporal y pedirle a pandoc que procese
		# lo que estaba alpie.
		cmd = "pandoc -f org -t latex > "
		tmpfile = ("data." PROCINFO["pid"])
		# llamamos a pandoc
		print alpie | (cmd tmpfile)
		close(cmd tmpfile)
		# leemos la salida
		while ((getline newdata < tmpfile) > 0)
			print newdata
		close(tmpfile)
		# cerramos el archivo temporal
		system("rm " tmpfile)
		printf "\\end{center}\n"
		printf "\\end{minipage}\\hfill\\null\n"
		alpie = ""
		}
	else
		printf "\\hfill\\null\n"
	if (alfin != ""){
                print alfin;
                alfin = ""
                }
	print "\\end{figure}\n"
	printf "#+END_EXPORT\n";
	}
else
if ($0 ~ /^#.*$/) {
	next
	}
else if ($0 ~ /^--.*$/){
        gsub("--",""); alfin = alfin "\n" $0;
        }
else
	alpie = alpie "\n" $0
next
}
/^::: minipagesnf\s/,/^:*$/ {
if ($0 ~ /^::: minipagesnf/) {
	env = $2;
	pwid = $3;
	imwid = $4/$3;
	printf "#+BEGIN_EXPORT latex\n";
	printf "\\begingroup\n\\null", env pwid;
	accum = 0
	alpie = ""
	}
else
if ($1 == "--minipage") {
	if(estapagina != ""){
	        accum = accum + pwid
		if (accum >= 1) {
			accum = 0
			printf "\\hfill\\null\\\\\n\\vspace{0.2cm}\n\\\\\\null"
			}
		printf "\\hfill\\begin{minipage}{%s\\textwidth}\n", pwid;
		printf "\\begin{center}"
		# Crear un archivo temporal y pedirle a pandoc que procese
		# lo que estaba alpie.
		cmd = "pandoc -f org -t latex > "
		tmpfile = ("data." PROCINFO["pid"])
		# llamamos a pandoc
		print estapagina | (cmd tmpfile)
		close(cmd tmpfile)
		# leemos la salida
		while ((getline newdata < tmpfile) > 0)
			print newdata
		close(tmpfile)
		# cerramos el archivo temporal
		system("rm " tmpfile)
		printf "\\end{center}\n"
	        printf "\\end{minipage}";
		}
	$1 = "";
	estapagina = ""
	}
else
if ($1 ~ /^\[\[.*/) { # Imagenes son minipages aparte
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
if ($0 ~ /^#.*$/) {
	next
	}
else if ($0 ~ /^--.*$/){
        gsub("--",""); alfin = alfin "\n" $0;
        }
else if ($0 ~ /^:*$/) {
	if(estapagina != ""){
	        accum = accum + pwid
		if (accum >= 1) {
			accum = 0
			printf "\\hfill\\null\\\\\n\\vspace{0.2cm}\n\\\\\\null"
			}
		printf "\\hfill\\begin{minipage}{%s\\textwidth}\n", pwid;
		printf "\\begin{center}"
		# Crear un archivo temporal y pedirle a pandoc que procese
		# lo que estaba alpie.
		cmd = "pandoc -f org -t latex > "
		tmpfile = ("data." PROCINFO["pid"])
		# llamamos a pandoc
		print estapagina | (cmd tmpfile)
		close(cmd tmpfile)
		# leemos la salida
		while ((getline newdata < tmpfile) > 0)
			print newdata
		close(tmpfile)
		# cerramos el archivo temporal
		system("rm " tmpfile)
		printf "\\end{center}\n"
	        printf "\\end{minipage}";
		}
	printf "\\hfill\\null\n"
	if (alfin != ""){
                print alfin;
                alfin = ""
                }
	print "\\endgroup\n"
	printf "#+END_EXPORT\n";
	}
else
	estapagina = estapagina "\n" $0
next
}
{ print }


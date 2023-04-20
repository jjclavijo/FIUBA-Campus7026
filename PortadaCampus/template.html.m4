divert(-1)
define(`LQ',`changequote(<,>)`dnl'
changequote`'')
define(`RQ',`changequote(<,>)dnl`
'changequote`'')
divert(0)dnl
<div>
    <script>
        var sheet = document.createElement('style')
        sheet.innerHTML = LQ()
include(`styles.css')
LQ();
        document.body.appendChild(sheet);
    </script>
syscmd(`m4 'xFILE` | pandoc -t html5')
</div>

sinclude(`foot.html')

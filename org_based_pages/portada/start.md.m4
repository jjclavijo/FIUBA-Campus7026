divert(-1)
define(`LQ',`changequote(<,>)`dnl'
changequote`'')
define(`RQ',`changequote(<,>)dnl`
'changequote`'')
define(`xNUM',eval(`0'))dnl

define(``:::'',`SARLANGA')

define(`xCOL',`define(`xNUM',eval(xNUM + 1))dnl

LQ()LQ()LQ(){=html}
<label for="mylist-node`'xNUM">Abrir/Colapsar</label>
LQ()LQ()LQ()
:::

::: {.collapsible}
LQ()LQ()LQ(){=html}
<input type="checkbox" id="mylist-node`'xNUM">
LQ()LQ()LQ()')
divert(0)dnl

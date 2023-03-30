divert(-1)
define(`LQ',`changequote(<,>)`dnl'
changequote`'')
define(`RQ',`changequote(<,>)dnl`
'changequote`'')
define(`xNUM',eval(`0'))dnl

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
::: {#iteoria}

::: {.tema}
\#1: Ciclo y Propiedades del Agua
xCOL
::: {.tema-cuerpo}

En este tema trabajaremos sobre algunos conceptos básicos relativos al agua.

Aunque la mayoría de los modelos que se aplican a la descripción del ciclo del
agua son muy complejos para el alcance de esta asignatura, trabajaremos con
algunos ejemplos sencillos que pueden calcularse, relativos al tiempo de residencia
del agua -- interpretando cada parte del ciclo como un reservorio --, a la evaporación, y a la forma en que se comporta el hielo debido a la particular densidad
del agua.

El material disponible es:
 - [Video Introductorio](https://campus.fi.uba.ar/mod/resource/view.php?id=141004){.recurso .propio}
 - [Apunte Teórico](https://campus.fi.uba.ar/mod/resource/view.php?id=140999){.recurso .propio}
 - [Notas extraidas de las filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=141000){.recurso .propio}
 - [Filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=266495){.recurso .propio}

:::
:::


::: {.tema}
\#2: Precipitaciones
xCOL
::: {.tema-cuerpo}

En este tema estudiaremos una parte puntual del ciclo del agua: las precipitaciones.

Veremos la importancia de medirlas y cómo pueden utilizarse los datos puntuales de precipitación en el cálculo de la precipitación ocurrida en un área.

Para esto aparecerán varios conceptos relativos a la interpolación y a la generación de datos continuos --raster o grilla-- a partir de los datos muestreados.

El material disponible es:
 - [Video Introductorio](https://campus.fi.uba.ar/mod/resource/view.php?id=144818){.recurso .propio}
 - [Apunte Teórico](https://campus.fi.uba.ar/mod/resource/view.php?id=144819){.recurso .propio}
 - [Notas extraidas de las filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=144821){.recurso .propio}
 - [Filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=266496){.recurso .propio}
 - [Video de Clase Interpolación 2021](https://drive.google.com/open?id=1YIYUB3twDxpNq_ACXAzOY_772nmKQsim){.recurso .propio}

:::
:::

::: {.tema}
\#3: Balance Hídrico - Riego - Uso consuntivo
xCOL
::: {.tema-cuerpo}

El riego es uno de los principales usos del agua. En este apartado estudiaremos
tanto conceptos generales sobre Riego como distintos métodos para estimar el
uso de agua necesario para una producción agrícola que utiliza riego.

Este tema es introductorio a los temas de Canales y Sistematización de predios,
más relacionados a las obras de ingeniería necesarias para el manejo del riego.

El material disponible es:
 - [Video Introductorio Riego](){.recurso .propio}
 - [Audio Introductorio Uso consuntivo](https://campus.fi.uba.ar/mod/resource/view.php?id=161396){.recurso .propio}
 - [Apunte Teórico Riego](https://campus.fi.uba.ar/mod/resource/view.php?id=153394){.recurso .propio}
 - [Apunte Teórico Uso consuntivo](https://campus.fi.uba.ar/mod/resource/view.php?id=161398){.recurso .propio}
 - [Notas de clase sobre Riego](https://campus.fi.uba.ar/mod/resource/view.php?id=153391){.recurso .propio}
 - [Notas de clase sobre Uso Consuntivo](https://campus.fi.uba.ar/mod/resource/view.php?id=161397){.recurso .propio}
 - [Método Blaney y Cridle](https://campus.fi.uba.ar/mod/resource/view.php?id=161400){.recurso .propio}

Agregamos además algunos links de interés sobre Riego:

 - Sobre aptitud de suelo y Riego, aplicado en argentina: [Link 1](http://www.ora.gob.ar/archivos/AreasAptas-Maiz-Soja.pdf), [Link 2](https://redsalinidad.com.ar/wp-content/uploads/2018/12/la-salinizacion-de-suelos-en-la-argentina.pdf)
 - Sobre la antigua agrigultura en la mesopotamia: [Link 1](https://historia116.wordpress.com/2013/09/22/egipto-don-del-nilo/)
 - Sobre los sistemas de canales antiguos en china: [Link 1](https://www.iagua.es/noticias/locken/dujiangyan-sistema-riego-mas-antiguo-mundo) [Link 2](http://whc.unesco.org/en/list/1001/) --Recomendamos que naveguen el mapa de la zona, con un sistema de canales que se conseva en uso hasta hoy--.
 - Sobre los Acueductos Romanos: [Link 1](https://www.abc.es/viajar/top/20140115/abci-acueductos-romanos-201401071106_1.html)
 - Sobre el sistema de terrazas aplicado en los andes: [Link 1](http://www.fao.org/tempref/GI/Reserved/FTP_FaoRlc/old/docrep/RLC1054s/rlc1054s.012.pdf)

Recomendamos que se aborden este tema planteandose desde qué optica aporta la ingeniería en esta temática, especialmente en cuanto a la información que debe proveer para el correcto diseño y aprovechamiento de los sistemas.

:::
:::

::: {.tema}
\#4: Aforos
xCOL
::: {.tema-cuerpo}

En esta sección veremos cómo se miden los caudales de los ríos y canales, cuáles
son las técnicas más utilizadas y cómo interpretar los datos obtenidos.

El material disponible es:
 - [Video Introductorio](https://campus.fi.uba.ar/mod/resource/view.php?id=155372){.recurso .propio}
 - [Apunte Teórico](https://campus.fi.uba.ar/mod/resource/view.php?id=155370){.recurso .propio}
 - [Notas extraidas de las filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=155369){.recurso .propio}
 - [Filminas de clase](https://campus.fi.uba.ar/mod/resource/view.php?id=266497){.recurso .propio}

:::
:::

:::

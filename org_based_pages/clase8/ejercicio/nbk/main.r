#== Generamos algunos datos de Ejemplo
#
#En R los datos pueden almacenarce en columnas, filas, o dataframe
#(tablas).
#
#una columna se define con
#
#....
#c(... , ... , ...)
#....
#
#una fila con
#
#....
#r(...
#....
#
#Un dataframe normalmente se lee a partir de una tabla o se construye a
#partir de columnas o filas.
#
#
#+*In[1]:*+
#[source, r]
----
eje <- c(1,2,3,4,5)
----
#
#
#+*In[2]:*+
#[source, r]
----
datos <- rnorm(5)
----
#
#== el operador <- es equivalente al operador =, significa asignción.
#
#== Verificar los tipos
#
#Para verificar el tipo de dato generado, utilizaremos la funcion
#`t(...)`
#
#veremos que la función rnorm generó una columna de muestras de una
#distribución normal.
#
#
#+*In[3]:*+
#[source, r]
----
t(eje)
----
#
#
#+*Out[3]:*+
----
.A matrix: 1 × 5 of type dbl
[cols=",,,,",]
|===
|1 |2 |3 |4 |5
|===
----
#
#
#+*In[4]:*+
#[source, r]
----
t(datos)
----
#
#
#+*Out[4]:*+
----
.A matrix: 1 × 5 of type dbl
[cols=",,,,",]
|===
|-0.8899682 |-1.399093 |0.01174459 |0.4751508 |0.4767729
|===
----
#
#
#+*In[5]:*+
#[source, r]
----
# los comentarios en R se hacen con el numeral.

# Utilizaremos la función plot para representar los datos
plot(eje,datos)
----
#
#
#+*Out[5]:*+
----
![png](output_6_0.png)
----
#
#== Ahora crearemos un dataframe, y luego realizaremos algunas operaciónes sobre los datos.
#
#
#+*In[6]:*+
#[source, r]
----
data.frame(rnorm(1000),rnorm(1000))
----
#
#
#+*Out[6]:*+
----
A data.frame: 1000 × 2

rnorm.1000.

rnorm.1000..1

<dbl>

<dbl>

0.40241749

0.2100048

1.56161730

-0.5659166

0.37092743

1.1778752

-0.07711921

-0.1588649

-1.19485092

-0.8224787

-1.18468651

0.9448456

0.39956727

0.1369600

-1.06104077

0.2887673

0.01476225

0.9642245

-1.18193018

-0.5362195

2.13199187

-1.1274156

-1.28210301

-0.2437699

-0.29334134

-2.5343586

-0.56066817

1.8008688

-0.18050483

-0.8631511

-1.01207907

-0.3298054

-0.94931355

0.1075792

-2.26971931

0.2106901

-0.23349640

-0.2782049

0.93144152

-0.9021302

-0.05518438

0.1024858

0.01081981

0.8532258

-1.25710706

3.0853210

0.12091787

-0.4059460

-1.19882538

-0.9320776

-1.19740244

-0.5656477

-1.02103163

-1.2083751

-0.91537517

-0.8796564

0.33196861

0.7818563

1.33167514

-0.9238532

⋮

⋮

-1.27240203

1.635951900

2.04753490

0.877758517

-0.74115080

0.358253572

0.50901016

-0.932145269

-0.14981223

0.224676880

0.66100408

-1.479201127

0.54518930

1.068098375

1.01010214

-0.327267085

-0.21219695

-0.681956560

-0.80231968

-0.316859398

-0.03699130

-0.227650360

-1.58913381

1.239916576

0.62362216

-1.391888169

0.15125156

1.030627968

0.85616044

0.924707127

-0.27393084

-1.376085773

-1.35311338

0.644573436

-0.72695712

0.253982970

0.73621530

-0.774914961

-0.92488757

-0.440766428

2.12427317

-0.280951727

-0.69915679

0.484803878

0.63627029

-1.204482443

1.58281576

-1.686930920

0.05650224

0.063685112

0.59331934

2.430568499

2.36423678

-0.641284928

-0.46765192

1.585944967

-1.07762288

0.979437889

0.49670408

0.003947993
----
#
#
#+*In[7]:*+
#[source, r]
----
mydata <- data.frame(rnorm(1000),rnorm(1000))
----
#
#
#+*In[8]:*+
#[source, r]
----
names(mydata)
----
#
#
#+*Out[8]:*+
----
. 'rnorm.1000.'
. 'rnorm.1000..1'
----
#
#== nombres e indice.
#
#la funcion names(..) nos devuelve los nombres de columna de un
#dataframe, pero también nos permite asignar nombres, por ejemplo:
#
#[source,r]
----
names(dataset) <- c("hola","chau")
----
#
#lo mismo ocurre con la funcion `row.names()`
#
#
#+*In[9]:*+
#[source, r]
----
names(mydata) <- c("peras","manzanas")
----
#
#
#+*In[10]:*+
#[source, r]
----
row.names(mydata)
----
#
#
#+*Out[10]:*+
----
. '1'
. '2'
. '3'
. '4'
. '5'
. '6'
. '7'
. '8'
. '9'
. '10'
. '11'
. '12'
. '13'
. '14'
. '15'
. '16'
. '17'
. '18'
. '19'
. '20'
. '21'
. '22'
. '23'
. '24'
. '25'
. '26'
. '27'
. '28'
. '29'
. '30'
. '31'
. '32'
. '33'
. '34'
. '35'
. '36'
. '37'
. '38'
. '39'
. '40'
. '41'
. '42'
. '43'
. '44'
. '45'
. '46'
. '47'
. '48'
. '49'
. '50'
. '51'
. '52'
. '53'
. '54'
. '55'
. '56'
. '57'
. '58'
. '59'
. '60'
. '61'
. '62'
. '63'
. '64'
. '65'
. '66'
. '67'
. '68'
. '69'
. '70'
. '71'
. '72'
. '73'
. '74'
. '75'
. '76'
. '77'
. '78'
. '79'
. '80'
. '81'
. '82'
. '83'
. '84'
. '85'
. '86'
. '87'
. '88'
. '89'
. '90'
. '91'
. '92'
. '93'
. '94'
. '95'
. '96'
. '97'
. '98'
. '99'
. '100'
. '101'
. '102'
. '103'
. '104'
. '105'
. '106'
. '107'
. '108'
. '109'
. '110'
. '111'
. '112'
. '113'
. '114'
. '115'
. '116'
. '117'
. '118'
. '119'
. '120'
. '121'
. '122'
. '123'
. '124'
. '125'
. '126'
. '127'
. '128'
. '129'
. '130'
. '131'
. '132'
. '133'
. '134'
. '135'
. '136'
. '137'
. '138'
. '139'
. '140'
. '141'
. '142'
. '143'
. '144'
. '145'
. '146'
. '147'
. '148'
. '149'
. '150'
. '151'
. '152'
. '153'
. '154'
. '155'
. '156'
. '157'
. '158'
. '159'
. '160'
. '161'
. '162'
. '163'
. '164'
. '165'
. '166'
. '167'
. '168'
. '169'
. '170'
. '171'
. '172'
. '173'
. '174'
. '175'
. '176'
. '177'
. '178'
. '179'
. '180'
. '181'
. '182'
. '183'
. '184'
. '185'
. '186'
. '187'
. '188'
. '189'
. '190'
. '191'
. '192'
. '193'
. '194'
. '195'
. '196'
. '197'
. '198'
. '199'
. '200'
. ⋯
. '801'
. '802'
. '803'
. '804'
. '805'
. '806'
. '807'
. '808'
. '809'
. '810'
. '811'
. '812'
. '813'
. '814'
. '815'
. '816'
. '817'
. '818'
. '819'
. '820'
. '821'
. '822'
. '823'
. '824'
. '825'
. '826'
. '827'
. '828'
. '829'
. '830'
. '831'
. '832'
. '833'
. '834'
. '835'
. '836'
. '837'
. '838'
. '839'
. '840'
. '841'
. '842'
. '843'
. '844'
. '845'
. '846'
. '847'
. '848'
. '849'
. '850'
. '851'
. '852'
. '853'
. '854'
. '855'
. '856'
. '857'
. '858'
. '859'
. '860'
. '861'
. '862'
. '863'
. '864'
. '865'
. '866'
. '867'
. '868'
. '869'
. '870'
. '871'
. '872'
. '873'
. '874'
. '875'
. '876'
. '877'
. '878'
. '879'
. '880'
. '881'
. '882'
. '883'
. '884'
. '885'
. '886'
. '887'
. '888'
. '889'
. '890'
. '891'
. '892'
. '893'
. '894'
. '895'
. '896'
. '897'
. '898'
. '899'
. '900'
. '901'
. '902'
. '903'
. '904'
. '905'
. '906'
. '907'
. '908'
. '909'
. '910'
. '911'
. '912'
. '913'
. '914'
. '915'
. '916'
. '917'
. '918'
. '919'
. '920'
. '921'
. '922'
. '923'
. '924'
. '925'
. '926'
. '927'
. '928'
. '929'
. '930'
. '931'
. '932'
. '933'
. '934'
. '935'
. '936'
. '937'
. '938'
. '939'
. '940'
. '941'
. '942'
. '943'
. '944'
. '945'
. '946'
. '947'
. '948'
. '949'
. '950'
. '951'
. '952'
. '953'
. '954'
. '955'
. '956'
. '957'
. '958'
. '959'
. '960'
. '961'
. '962'
. '963'
. '964'
. '965'
. '966'
. '967'
. '968'
. '969'
. '970'
. '971'
. '972'
. '973'
. '974'
. '975'
. '976'
. '977'
. '978'
. '979'
. '980'
. '981'
. '982'
. '983'
. '984'
. '985'
. '986'
. '987'
. '988'
. '989'
. '990'
. '991'
. '992'
. '993'
. '994'
. '995'
. '996'
. '997'
. '998'
. '999'
. '1000'
----
#
#
#+*In[11]:*+
#[source, r]
----
# Con el signo $ podemos acceder a una columna del dataframe, y operar
print(min(mydata$peras))
print(max(mydata$peras))
print(mean(mydata$peras))
----
#
#
#+*Out[11]:*+
----
[1] -3.182658
[1] 3.087681
[1] -0.02552838
----
#
#
#+*In[12]:*+
#[source, r]
----
hist(mydata$peras)
hist(mydata$manzanas)
----
#
#
#+*Out[12]:*+
----
![png](output_15_0.png)

![png](output_15_1.png)
----
#
#
#+*In[13]:*+
#[source, r]
----
h_peras <- hist(mydata$peras)
h_manzanas <- hist(mydata$manzanas)
----
#
#
#+*Out[13]:*+
----
![png](output_16_0.png)

![png](output_16_1.png)
----
#
#
#+*In[14]:*+
#[source, r]
----
h_peras
----
#
#
#+*Out[14]:*+
----$breaks
 [1] -3.5 -3.0 -2.5 -2.0 -1.5 -1.0 -0.5  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5

$counts
 [1]   3   9  25  34  99 143 179 194 160  98  36  11   7   2

$density
 [1] 0.006 0.018 0.050 0.068 0.198 0.286 0.358 0.388 0.320 0.196 0.072 0.022
[13] 0.014 0.004

$mids
 [1] -3.25 -2.75 -2.25 -1.75 -1.25 -0.75 -0.25  0.25  0.75  1.25  1.75  2.25
[13]  2.75  3.25

$xname
[1] "mydata$peras"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"----
#
#== Superponer Ploteos
#
#Podemos superponer varios datos en una sola imagen, aunque no es trivial
#identificar cuales comandos agregan datos a un gráfico y cuales generan
#un gráfico nuevo.
#
#Siempre podemos usar
#
#....
#help(comando)
#....
#
#Para obtener ayuda de un comando.
#
#
#+*In[15]:*+
#[source, r]
----
plot(h_peras$mids,h_peras$density)
rect(h_peras$breaks[-length(h_peras$breaks)],0,h_peras$breaks[-1],h_peras$density,density=4)
rect(h_peras$breaks[-length(h_manzanas$breaks)],0,h_manzanas$breaks[-1],h_manzanas$density,density=4,angle=135)
----
#
#
#+*Out[15]:*+
----
![png](output_19_0.png)
----
#
#== Para seguir investigando sobre dataframes y graficos
#
#https://ggplot2.tidyverse.org/
#
#https://www.tidyverse.org/packages/
#
#Recordar que para instalar librerias lo correcto no es usar
#install.package como indican los tutoriales sino probar primero con
#conda install (por ejemplo conda install r-tidyverse)
#
#== cargar librerias
#
#Para el TP necesitarán utilizar la libreria ismev, que ya instalamos,
#una libreria ya instalada se carga con:
#
#[source,r]
----
library("ismev")
----
#install.packages("ismev")
#
#+*In[16]:*+
#[source, r]
----
library("ismev")
----
#
#
#+*Out[16]:*+
----
Loading required package: mgcv

Loading required package: nlme

This is mgcv 1.8-31. For overview type 'help("mgcv-package")'.

----
#
#
#+*In[17]:*+
#[source, r]
----
help(reshape)
----
#
#
#+*Out[17]:*+
----
[cols=",>",]
|===
|reshape \{stats} |R Documentation
|===

== Reshape Grouped Data

=== Description

This function reshapes a data frame between ‘wide’ format with repeated
measurements in separate columns of the same record and ‘long’ format
with the repeated measurements in separate records.

=== Usage

....
reshape(data, varying = NULL, v.names = NULL, timevar = "time",
        idvar = "id", ids = 1:NROW(data),
        times = seq_along(varying[[1]]),
        drop = NULL, direction, new.row.names = NULL,
        sep = ".",
        split = if (sep == "") {
            list(regexp = "[A-Za-z][0-9]", include = TRUE)
        } else {
            list(regexp = sep, include = FALSE, fixed = TRUE)}
        )
....

=== Arguments

[cols=",",]
|===
|`data` |a data frame

|`varying` |names of sets of variables in the wide format that
correspond to single variables in long format (‘time-varying’). This is
canonically a list of vectors of variable names, but it can optionally
be a matrix of names, or a single vector of names. In each case, the
names can be replaced by indices which are interpreted as referring to
`names(data)`. See ‘Details’ for more details and options.

|`v.names` |names of variables in the long format that correspond to
multiple variables in the wide format. See ‘Details’.

|`timevar` |the variable in long format that differentiates multiple
records from the same group or individual. If more than one record
matches, the first will be taken (with a warning).

|`idvar` |Names of one or more variables in long format that identify
multiple records from the same group/individual. These variables may
also be present in wide format.

|`ids` |the values to use for a newly created `idvar` variable in long
format.

|`times` |the values to use for a newly created `timevar` variable in
long format. See ‘Details’.

|`drop` |a vector of names of variables to drop before reshaping.

|`direction` |character string, partially matched to either `"wide"` to
reshape to wide format, or `"long"` to reshape to long format.

|`new.row.names` |character or `NULL`: a non-null value will be used for
the row names of the result.

|`sep` |A character vector of length 1, indicating a separating
character in the variable names in the wide format. This is used for
guessing `v.names` and `times` arguments based on the names in
`varying`. If `sep == ""`, the split is just before the first numeral
that follows an alphabetic character. This is also used to create
variable names when reshaping to wide format.

|`split` |A list with three components, `regexp`, `include`, and
(optionally) `fixed`. This allows an extended interface to variable name
splitting. See ‘Details’.
|===

=== Details

The arguments to this function are described in terms of longitudinal
data, as that is the application motivating the functions. A ‘wide’
longitudinal dataset will have one record for each individual with some
time-constant variables that occupy single columns and some time-varying
variables that occupy a column for each time point. In ‘long’ format
there will be multiple records for each individual, with some variables
being constant across these records and others varying across the
records. A ‘long’ format dataset also needs a ‘time’ variable
identifying which time point each record comes from and an ‘id’ variable
showing which records refer to the same person.

If the data frame resulted from a previous `reshape` then the operation
can be reversed simply by `reshape(a)`. The `direction` argument is
optional and the other arguments are stored as attributes on the data
frame.

If `direction = "wide"` and no `varying` or `v.names` arguments are
supplied it is assumed that all variables except `idvar` and `timevar`
are time-varying. They are all expanded into multiple variables in wide
format.

If `direction = "long"` the `varying` argument can be a vector of column
names (or a corresponding index). The function will attempt to guess the
`v.names` and `times` from these names. The default is variable names
like `x.1`, `x.2`, where `sep = "."` specifies to split at the dot and
drop it from the name. To have alphabetic followed by numeric times use
`sep = ""`.

Variable name splitting as described above is only attempted in the case
where `varying` is an atomic vector, if it is a list or a matrix,
`v.names` and `times` will generally need to be specified, although they
will default to, respectively, the first variable name in each set, and
sequential times.

Also, guessing is not attempted if `v.names` is given explicitly. Notice
that the order of variables in `varying` is like
`x.1`,`y.1`,`x.2`,`y.2`.

The `split` argument should not usually be necessary. The `split$regexp`
component is passed to either `strsplit` or `regexpr`, where the latter
is used if `split$include` is `TRUE`, in which case the splitting occurs
after the first character of the matched string. In the `strsplit` case,
the separator is not included in the result, and it is possible to
specify fixed-string matching using `split$fixed`.

=== Value

The reshaped data frame with added attributes to simplify reshaping back
to the original form.

=== See Also

`stack`, `aperm`; `relist` for reshaping the result of `unlist`.

=== Examples

....
summary(Indometh)
wide <- reshape(Indometh, v.names = "conc", idvar = "Subject",
                timevar = "time", direction = "wide")
wide

reshape(wide, direction = "long")
reshape(wide, idvar = "Subject", varying = list(2:12),
        v.names = "conc", direction = "long")

## times need not be numeric
df <- data.frame(id = rep(1:4, rep(2,4)),
                 visit = I(rep(c("Before","After"), 4)),
                 x = rnorm(4), y = runif(4))
df
reshape(df, timevar = "visit", idvar = "id", direction = "wide")
## warns that y is really varying
reshape(df, timevar = "visit", idvar = "id", direction = "wide", v.names = "x")


##  unbalanced 'long' data leads to NA fill in 'wide' form
df2 <- df[1:7, ]
df2
reshape(df2, timevar = "visit", idvar = "id", direction = "wide")

## Alternative regular expressions for guessing names
df3 <- data.frame(id = 1:4, age = c(40,50,60,50), dose1 = c(1,2,1,2),
                  dose2 = c(2,1,2,1), dose4 = c(3,3,3,3))
reshape(df3, direction = "long", varying = 3:5, sep = "")


## an example that isn't longitudinal data
state.x77 <- as.data.frame(state.x77)
long <- reshape(state.x77, idvar = "state", ids = row.names(state.x77),
                times = names(state.x77), timevar = "Characteristic",
                varying = list(names(state.x77)), direction = "long")

reshape(long, direction = "wide")

reshape(long, direction = "wide", new.row.names = unique(long$state))

## multiple id variables
df3 <- data.frame(school = rep(1:3, each = 4), class = rep(9:10, 6),
                  time = rep(c(1,1,2,2), 3), score = rnorm(12))
wide <- reshape(df3, idvar = c("school","class"), direction = "wide")
wide
## transform back
reshape(wide)
....

'''''

[Package _stats_ version 4.0.2 ]
----
#
#
#+*In[18]:*+
#[source, r]
----
# Primero tomaremos una columna y la redimensionaremos a 100x10, luego cacularemos maximos.

matriz <- matrix(mydata$peras,nrow = 100)
----
#
#
#+*In[19]:*+
#[source, r]
----
maximos_peras <- apply(matriz,1,max)
----
#
#
#+*In[20]:*+
#[source, r]
----
# Computamos el histograma de maximos
----
#
#
#+*In[21]:*+
#[source, r]
----
hist(maximos_peras)
----
#
#
#+*Out[21]:*+
----
![png](output_28_0.png)
----
#
#== Distribución GEV.
#
#Podemos utilizar la funcion gev.fit del paquete ismev para ajustar una
#distribución GEV a estos datos.
#
#
#+*In[22]:*+
#[source, r]
----
gev.fit(maximos_peras)
----
#
#
#+*Out[22]:*+
----
$conv
[1] 0

$nllh
[1] 87.02182

$mle
[1]  1.2601483  0.5260128 -0.1162076

$se
[1] 0.05833470 0.04050000 0.06604167

----
#
#
#+*In[23]:*+
#[source, r]
----
help(gev.fit)
----
#
#
#+*Out[23]:*+
----
[cols=",>",]
|===
|gev.fit \{ismev} |R Documentation
|===

== Maximum-likelihood Fitting of the GEV Distribution

=== Description

Maximum-likelihood fitting for the generalized extreme value
distribution, including generalized linear modelling of each parameter.

=== Usage

....
gev.fit(xdat, ydat = NULL, mul = NULL, sigl = NULL, shl = NULL, 
    mulink = identity, siglink = identity, shlink = identity, 
    muinit = NULL, siginit = NULL, shinit = NULL,
    show = TRUE, method = "Nelder-Mead", maxit = 10000, ...)
....

=== Arguments

[cols=",",]
|===
|`xdat` |A numeric vector of data to be fitted.

|`ydat` |A matrix of covariates for generalized linear modelling of the
parameters (or `NULL` (the default) for stationary fitting). The number
of rows should be the same as the length of `xdat`.

|`mul, sigl, shl` |Numeric vectors of integers, giving the columns of
`ydat` that contain covariates for generalized linear modelling of the
location, scale and shape parameters repectively (or `NULL` (the
default) if the corresponding parameter is stationary).

|`mulink, siglink, shlink` |Inverse link functions for generalized
linear modelling of the location, scale and shape parameters
repectively.

|`muinit, siginit, shinit` |numeric of length equal to total number of
parameters used to model the location, scale or shape parameter(s),
resp. See Details section for default (NULL) initial values.

|`show` |Logical; if `TRUE` (the default), print details of the fit.

|`method` |The optimization method (see `optim` for details).

|`maxit` |The maximum number of iterations.

|`...` |Other control parameters for the optimization. These are passed
to components of the `control` argument of `optim`.
|===

=== Details

The form of the GEV used is that of Coles (2001) Eq (3.2). Specifically,
positive values of the shape parameter imply a heavy tail, and negative
values imply a bounded upper tail.

For non-stationary fitting it is recommended that the covariates within
the generalized linear models are (at least approximately) centered and
scaled (i.e.\ the columns of `ydat` should be approximately centered and
scaled).

Let m=mean(xdat) and s=sqrt(6*var(xdat))/pi. Then, initial values
assigend when 'muinit' is NULL are m - 0.57722 * s (stationary case).
When 'siginit' is NULL, the initial value is taken to be s, and when
'shinit' is NULL, the initial value is taken to be 0.1. When covariates
are introduced (non-stationary case), these same initial values are used
by default for the constant term, and zeros for all other terms. For
example, if a GEV( mu(t)=mu0+mu1*t, sigma, xi) is being fitted, then the
initial value for mu0 is m - 0.57722 * s, and 0 for mu1.

=== Value

A list containing the following components. A subset of these components
are printed after the fit. If `show` is `TRUE`, then assuming that
successful convergence is indicated, the components `nllh`, `mle` and
`se` are always printed.

[cols=",",]
|===
|`nllh` |single numeric giving the negative log-likelihood value.

|`mle` |numeric vector giving the MLE's for the location, scale and
shape parameters, resp.

|`se` |numeric vector giving the standard errors for the MLE's for the
location, scale and shape parameters, resp.

|`trans` |An logical indicator for a non-stationary fit.

|`model` |A list with components `mul`, `sigl` and `shl`.

|`link` |A character vector giving inverse link functions.

|`conv` |The convergence code, taken from the list returned by `optim`.
A zero indicates successful convergence.

|`nllh` |The negative logarithm of the likelihood evaluated at the
maximum likelihood estimates.

|`data` |The data that has been fitted. For non-stationary models, the
data is standardized.

|`mle` |A vector containing the maximum likelihood estimates.

|`cov` |The covariance matrix.

|`se` |A vector containing the standard errors.

|`vals` |A matrix with three columns containing the maximum likelihood
estimates of the location, scale and shape parameters at each data
point.
|===

=== References

Coles, S., 2001. An Introduction to Statistical Modeling of Extreme
Values. Springer-Verlag, London, U.K., 208pp.

=== See Also

`gev.diag`, `optim`, `gev.prof`

=== Examples

....
data(portpirie)
gev.fit(portpirie[,2])
....

'''''

[Package _ismev_ version 1.42 ]
----
#
#
#+*In[24]:*+
#[source, r]
----
help(gev.diag)
----
#
#
#+*Out[24]:*+
----
[cols=",>",]
|===
|gev.diag \{ismev} |R Documentation
|===

== Diagnostic Plots for GEV Models

=== Description

Produces diagnostic plots for GEV models using the output of the
function `gev.fit`.

=== Usage

....
gev.diag(z)
....

=== Arguments

[cols=",",]
|===
|`z` |An object returned by `gev.fit`.
|===

=== Value

For stationary models four plots are produced; a probability plot, a
quantile plot, a return level plot and a histogram of data with fitted
density.

For non-stationary models two plots are produced; a residual probability
plot and a residual quantile plot.

=== See Also

`gev.fit`, `gev.prof`

=== Examples

....
data(portpirie)
ppfit <- gev.fit(portpirie[,2])
gev.diag(ppfit)
....

'''''

[Package _ismev_ version 1.42 ]
----
#
#
#+*In[25]:*+
#[source, r]
----
gev.diag(gev.fit(maximos_peras))
----
#
#
#+*Out[25]:*+
----
$conv
[1] 0

$nllh
[1] 87.02182

$mle
[1]  1.2601483  0.5260128 -0.1162076

$se
[1] 0.05833470 0.04050000 0.06604167


![png](output_33_1.png)
----
## Vamos a utilizar la libreria xExtremes, Al instalarlo con "conda install r-fExtremes" aparece un error,
## Al cargar la libreria nos pide reinstalar algunos paquetes
## por lo que los (re)instalaremos desde R.
#
#install.packages("timeDate")
#install.packages("timeSeries")
#install.packages("fBasics")
#install.packages("spatial")
#install.packages("fGarch")
#
#install.packages("fExtremes")
#
#+*In[26]:*+
#[source, r]
----
library(fExtremes)
----
#
#
#+*Out[26]:*+
----
Loading required package: timeDate

Loading required package: timeSeries

Loading required package: fBasics

Loading required package: fGarch

----
#
#== Plotear funciones de densidad
#
#Con la funcion dgev del paquete fExtremes podemos construir fuciones de
#densidad de GEV.
#
#En la siguiente celda, tomamos los resultados de gev.fit y ploteamos la
#PDF de GEV correspondiente junto al histograma de los valores
#utilizados.
#
#Les sugerimos que prueben repetir la celda para verificar como cambia la
#forma de la distribución GEV al modificar los parámetros.
#
#
#+*In[27]:*+
#[source, r]
----
x = c(1:1000)/100

my_mu <- 1.3605525
my_beta <- 0.5780353
my_xi <- -0.2491259

hist(maximos_peras, freq = FALSE)
lines(x,dgev(x,mu=my_mu,beta=my_beta,xi=my_xi))
----
#
#
#+*Out[27]:*+
----
![png](output_37_0.png)
----
#
#== Otro ejemplo
#
#Otro proceso simple de generar es el proceso gaussiano de ruido blanco.
#
#En nuestro caso lo podemos generar sumando muestras de una normal,
#partiremos de las manzanas que ya muestreamos
#
#
#+*In[28]:*+
#[source, r]
----
gp_manzanas <- cumsum(mydata$manzanas)
----
#
#
#+*In[29]:*+
#[source, r]
----
plot(gp_manzanas)
----
#
#
#+*Out[29]:*+
----
![png](output_40_0.png)
----
#
#
#+*In[30]:*+
#[source, r]
----
# Primero tomaremos una columna y la redimensionaremos a 100x10, luego cacularemos maximos.

mat_gp <- matrix(gp_manzanas,nrow = 100)
maximos_gp <- apply(mat_gp,1,max)
----
#
#== Tendencia lineal
#
#al plotear los maximos veremos que hay una tendencia lineal. Para
#eliminarla utilizaremos un modelo lineal generalizado, glm
#
#
#+*In[31]:*+
#[source, r]
----
plot(maximos_gp)
----
#
#
#+*Out[31]:*+
----
![png](output_43_0.png)
----
#
#
#+*In[32]:*+
#[source, r]
----
y <- maximos_gp
x1 <- c(1:100)
modelo <- glm(y ~ x1)
----
#
#
#+*In[33]:*+
#[source, r]
----
plot(x1,y)
lines(x1,modelo$fitted.values)
----
#
#
#+*Out[33]:*+
----
![png](output_45_0.png)
----
#
#
#+*In[34]:*+
#[source, r]
----
# Los residuales del modelo son los valores con la tendencia lineal eliminada si les sumamos el intercept
# que es la ordenada al origen del modelo lineal ajustado

sin_tendencia <- modelo$residuals+modelo$coefficients[1]
plot(sin_tendencia)
----
#
#
#+*Out[34]:*+
----
![png](output_46_0.png)
----
#
#
#+*In[42]:*+
#[source, r]
----
#Ahora podemos aplicar gev.fit

fit = gev.fit(sin_tendencia)
----
#
#
#+*Out[42]:*+
----
$conv
[1] 0

$nllh
[1] 207.7638

$mle
[1] 12.2628057  1.8087034 -0.1560146

$se
[1] 0.1986332 0.1365624 0.0581228

----
#
#
#+*In[49]:*+
#[source, r]
----
x = c(1:1000)*max(sin_tendencia)/1000

my_mu <- fit$mle[1]
my_beta <- fit$mle[2]
my_xi <- fit$mle[3]

hist(sin_tendencia, freq = FALSE)
lines(x,dgev(x,mu=my_mu,beta=my_beta,xi=my_xi))
----
#
#
#+*Out[49]:*+
----
![png](output_48_0.png)
----
#
#== Para Hallar períodos de recurrencia
#
#Necesitamos hallar la F. esto se logra con la funcion fgev, cuyos
#parámetros son similares a los de dgev.
#
#[source,r]
----
recurrencia <- 1/(1-fgev(x,...))
----
#
#=== Se los dejamos como ejercicio
#
#== Cargar datos
#
#Finalmente, para el trabajo necesitaran cargar datos desde la planilla
#excel. Lo mejor es convertir las tablas a csv, Aqui les inluimos un csv
#de ejemplo.
#
#Mas información:
#https://www.datacamp.com/community/tutorials/r-tutorial-read-excel-into-r
#
#
#+*In[ ]:*+
#[source, r]
----
df <- read.table('data_demo.csv', sep=',',header=TRUE)
----
#
#
#+*In[ ]:*+
#[source, r]
----
df
----
#
#
#+*In[ ]:*+
#[source, r]
----

----
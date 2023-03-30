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
#
#
#+*In[4]:*+
#[source, r]
----
t(datos)
----
#
#
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
#
#
#+*In[14]:*+
#[source, r]
----
h_peras
----
#
#
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
#
#
#+*In[17]:*+
#[source, r]
----
help(reshape)
----
#
#
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
#
#
#+*In[23]:*+
#[source, r]
----
help(gev.fit)
----
#
#
#
#
#+*In[24]:*+
#[source, r]
----
help(gev.diag)
----
#
#
#
#
#+*In[25]:*+
#[source, r]
----
gev.diag(gev.fit(maximos_peras))
----
#
#
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

#Instalamos los siguientes paquetes (en caso de no tenerlos ya):
install.packages("car")
install.packages("FactoMineR")
install.packages("devtools")
devtools::install_github("kassambara/factoextra")

#Cargamos los datos
heart <- read.csv("~/GitHub/Almacenes-y-Mineria-de-datos/ProyectoFinal/datasets/Preprocesamiento/heart-c2.csv")

#Los visualizamos
View(heart)

#Obtenemos un resumen de los datos cargados
summary(heart)

#Vamos a realizar un diagrama de dispersión de los resultados actuales

#Cargamos los siguientes paquetes
library(car)

#Creamos el diagrama de dispersión en forma de matriz, con ajuste no paramétrico
scatterplotMatrix(heart,diagonal="histogram", smooth = FALSE)

#Comprobemos los resultados con la matriz de correlaciones
round(cor(heart),2)
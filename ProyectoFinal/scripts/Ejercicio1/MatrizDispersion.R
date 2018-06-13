#Instalamos los siguientes paquetes (en caso de no tenerlos ya):
install.packages("car")
install.packages("FactoMineR")
install.packages("devtools")
devtools::install_github("kassambara/factoextra")

#Cargamos los datos

#heart <- read.csv("Downloads/heart.csv")
heart <- read.csv("Documents/Mineria/Proyecto/final/heart.csv")
#Los visualizamos
heart

#Obtenemos un resumen de los datos cargados
summary(heart)

#Vamos a realizar un diagrama de dispersi?n de los resultados actuales

#Cargamos los siguientes paquetes
library(car)

#Creamos el diagrama de dispersi?n en forma de matriz, con ajuste no param?trico
scatterplotMatrix(heart,diagonal="histogram")

#Recodificamos para tener todas en la misma direcci?n
heart$age <- max(heart$age)-heart$age
#heart$sex <- max(heart$sex)-heart$sex
#heart$cp <- max(heart$cp)-heart$cp
heart$trestbps <- max(heart$trestbps)-heart$trestbps
heart$chol <- max(heart$chol)-heart$chol
#heart$fbs <- max(heart$fbs)-heart$fbs
#heart$restecg <- max(heart$restecg)-heart$restecg
heart$thalach <- max(heart$thalach)-heart$thalach
#heart$exang <- max(heart$exang)-heart$exang
heart$oldpeak <- max(heart$oldpeak)-heart$oldpeak
#heart$slope <- max(heart$slope)-heart$slope
#heart$ca <- max(heart$ca)-heart$ca
#heart$thal <- max(heart$thal)-heart$thal
#heart$num <- max(heart$num)-heart$num

#Dibujamos el diagrama de dispersi?n correspondiente
scatterplotMatrix(heart,diagonal="histogram",smooth = FALSE)


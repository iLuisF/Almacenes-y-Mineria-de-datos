
#Actividad 1

#Se cargan datos y bibliotecas.
library(arules)
library(grid)

#Cambiar ruta del archivo de entrada.
bank <- read.csv(file = "~/GitHub/Almacenes-y-Mineria-de-datos/Practica11/bank-additional-full.csv",
                          head = TRUE,
                          sep = ";")

#Se cambian atributos a nominal.
bank$age <- factor(bank$age)
bank$job <- factor(bank$job)
bank$marital <- factor(bank$marital)
bank$education <- factor(bank$education)
bank$default <- factor(bank$default)
bank$housing <- factor(bank$housing)
bank$loan <- factor(bank$loan)
bank$contact <- factor(bank$contact)
bank$month <- factor(bank$month)
bank$day_of_week <- factor(bank$day_of_week)
bank$duration <- factor(bank$duration)
bank$campaign <- factor(bank$campaign)
bank$pdays <- factor(bank$pdays)
bank$previous <- factor(bank$previous)
bank$poutcome<- factor(bank$poutcome)
bank$emp.var.rate <- factor(bank$emp.var.rate)
bank$cons.price.idx <- factor(bank$cons.price.idx)
bank$cons.conf.idx <- factor(bank$cons.conf.idx)
bank$euribor3m <- factor(bank$euribor3m)
bank$nr.employed <- factor(bank$nr.employed)
bank$y <- factor(bank$y)

#Detalles del dataset.
dim(bank)
head(bank)
summary(bank)

#Actividad 2
#Ocupe la funci�n apriori para generar las reglas de asociaci�n con la configuraci�n por defecto.
#Observe el resultado, �encuentras reglas �tiles y significativas?. Justifique.

#Generamos las reglas
rules.all <- apriori(bank)

#N�mero de reglas generadas.
rules.all

#Inspeccionamos las reglas.
inspect(rules.all)

#Actividad 3.
#Ejecute de nuevo la funci�n apriori (cinco veces al menos) pero ahora variando el soporte. Observe
#el resultado, �observa reglas �tiles y significativas?, �qu� cambio con respecto al soporte por
#defecto?, �en qu� ayudan este tipo de cambios (del soporte)?. Seleccione el soporte que m�s le
#parezca apropiado (justifique su respuesta).

soporte <- apriori(bank, parameter = list(supp = 0.1))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.2))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.3))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.4))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.5))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.6))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.7))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.8))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
soporte <- apriori(bank, parameter = list(supp = 0.9))
rules.all <- subset(soporte, rhs %in% c("y=yes","y=no"))
inspect(rules.all)

#Actividad 4
#Repite el paso anterior pero ahora modificando la confianza. Responda las mismas preguntas que el
#ejercicio anterior pero ahora con respecto al par�metro actual.

confianza <- apriori(bank, parameter = list(conf = 0.1))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.2))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.3))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.4))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.5))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.6))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.7))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.8))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 0.9))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
confianza <- apriori(bank, parameter = list(conf = 1))
rules.all <- subset(confianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)

#Actividad 5
#Tras las iteraciones anteriores, arroje el conjunto que, a su juicio, es el m�s significativo, �til y
#novedoso. No olvide indicar con que par�metros los obtuvo.

soporteConfianza <- apriori(bank, parameter = list(conf = 0.9, supp=0.5))
rules.all <- subset(soporteConfianza, rhs %in% c("y=yes","y=no"))
inspect(rules.all)
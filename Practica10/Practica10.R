#Cargamos el dataset.
Adult <- read.csv("Adult.cvs", header=TRUE)

#Se guardan los datos en una tabla.
datos <- data.frame(Adult)

#Renombramos los nombres de las columnas.
names(datos)[1] = "Edad"
names(datos)[2] = "Tipo_Trabajo"
names(datos)[4] = "Educacion"
names(datos)[5] = "Numero_Educacion"
names(datos)[6] = "Estado_Civil"
names(datos)[7] = "Ocupacion"
names(datos)[8] = "Relacion"
names(datos)[9] = "Raza"
names(datos)[10] = "Genero"
names(datos)[11] = "Ganancia"
names(datos)[12] = "Perdida"
names(datos)[13] = "Horas_por_semana"
names(datos)[14] = "Pais"
names(datos)[15] = "Percepciones"

#Guardamos los datos en un vector para hacer los cambios a los atributos en genero.
x <- c(datos$Genero)
x <- as.character(x)

#Guardamos los datos en un vector para hacer los cambios a los atributos en raza.
w <- c(datos$Raza)
w <- as.character(w)

#Guardamos los datos en un vector para hacer los cambios a los atributos en estado civil.
y <- c(datos$Estado_Civil)
y <- as.character(y)

#Usamos el metodo replace para hacer la sustitucion de atributos en genero.
x <- replace(x, x == "1", "Femenino")
x <- replace(x, x == "2", "Masculino")

#Usamos el metodo replace para hacer la sustitucion de atributos en raza.
w <- replace(w, w == "5", "Blanco")
w <- replace(w, w == "3", "Negro")
w <- replace(w, w == "2", "Asiaticos")
w <- replace(w, w == "4", "Otro")
w <- replace(w, w == "1", "Americano")

#Usamos el metodo replace para hacer la sustitucion de atributos en estado civil.
y <- replace(y, y == "1", "Divorciado")
y <- replace(y, y == "2", "Esposo casado ausente")
y <- replace(y, y == "3", "Casados por el civil.")
y <- replace(y, y == "4", "Casados")
y <- replace(y, y == "5", "C�nyuge civ civilizado")
y <- replace(y, y == "6", "Separado")
y <- replace(y, y == "7", "Viudo")

#Aplicamos los cambios a la tabla
datos$Genero <- x
datos$Raza <- w
datos$Estado_Civil <- y

#Visualizamos la tabla temporal(frame) antes de guarda.
View(datos)

#Guardamos los datos.
write.csv(datos, file="Resultados.cvs")

#Respuestas

#Los m�todos de imputaci�n consisten en estimar los valores ausentes en base a los 
#valores v�lidos de otras variables y/o casos de la muestra. La estimaci�n se puede
#hacer a partir de la informaci�n del conjunto completo de variables o bien de algunas
#variables especialmente seleccionadas. Usualmente los m�todos de imputaci�n se utilizan 
#con variables m�tricas (de intervalo o de raz�n), y deben aplicarse con gran precauci�n 
#porque pueden introducir relaciones inexistentes en los datos realas.

#Imputaci�n por regresi�n. Este m�todo consiste en estimar los valores ausentes en base a 
#su relaci�n con otros variables mediante An�lisis de Regresi�n.
# Inconvenientes:
# - Incrementa artificialmente las relaciones entre variables.
# - Hace que se subestime la Vari�ncia de las distribuciones.
# - Asume que las variables con datos ausentes tienen relaci�n de alta magnitud con las otras variables.
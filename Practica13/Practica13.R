library(readr)
library(cluster)

Adult <- read.csv("C:/Users/Luis/Desktop/[A&MD]Practica13/Adult.cvs")
pam.resultado <- pam(Adult,5)
table(pam.resultado$clustering, Adult$Edad)
table(pam.resultado$clustering, Adult$TipoEmpleado)
table(pam.resultado$clustering, Adult$PonderacionFinal)
table(pam.resultado$clustering, Adult$NivelEducacion)
table(pam.resultado$clustering, Adult$GradoEducaion)
table(pam.resultado$clustering, Adult$EstadoCivil)
table(pam.resultado$clustering, Adult$Ocupacion)
table(pam.resultado$clustering, Adult$RolFamiliar)
table(pam.resultado$clustering, Adult$Raza)
table(pam.resultado$clustering, Adult$Sexo)
table(pam.resultado$clustering, Adult$Ganancias)
table(pam.resultado$clustering, Adult$Perdidas)
table(pam.resultado$clustering, Adult$HorasTrabajadas)
table(pam.resultado$clustering, Adult$PaisOrigen)
table(pam.resultado$clustering, Adult$Ingresos)




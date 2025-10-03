Refrescos <- c("CokeClassic", "DietCoke", "Pepsi", "Dr.Pepper", "Sprite")
#Crear vector con 50 refrescos al azar
set.seed(12345)
datos <- sample(Refrescos, size = 50, replace = TRUE)

#Generar tabla de distribución de frecuencias
tabla <- table(datos)

#Imprimir tabla
tabla

#frecuencia relativa
frecuencia_relativa <- prop.table(tabla)

frecuencia_relativa

#Frecuencia porcentual 
frecuencia_porcentual <- frecuencia_relativa * 100

#Imprimir tabla de frecuencia porcentual
frecuencia_porcentual

#Grafico de barras
barplot(tabla, main = "Refrescos", col = c("blue", "red", "yellow", "black", "green") )

library(plotrix)
pie3D(tabla,  main = "Refrescos", col = c("blue", "red", "violet", "purple", "green"))

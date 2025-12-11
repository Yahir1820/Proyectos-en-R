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

#plot culero
plot(tabla, lwd=20, main = "Refrescos", col = c("blue", "red", "yellow", "black", "green") )

#para usar grafica de pastel 3d se usa la libreria plotrix
#labels es para ponerle el nombre de los vectores
library(plotrix)
pie3D(tabla, 
      labels= Refrescos, 
      main = "Refrescos", 
      col = c("blue", "red", "violet", "purple", "green"))


#para grafica de pastel normal
pie(tabla, 
    main = "Refrescos", 
    col = c("blue", "red", "violet", "purple", "green"))

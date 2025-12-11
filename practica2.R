Marcas <- c("Samsumg", "iPhone", "Xiaomi", "Motorola", "Huawei")

set.seed(1000)

datos <- sample(Marcas, size=100, replace = TRUE)

tabla <- table(datos)
tabla

# grafica de barras
barplot(tabla, main = "Marcas", col = c(rainbow(4), "yellow", "red", "purple", "green"))

# grafica de pastel
pie(tabla, labels = Marcas, col = c("blue", "yellow", "red", "purple", "green") )


#grafica de lineas
tsData <- ts(c(3,5,2,6,8))
plot(tsData, #los plots usan datos numericos
     type="o", # type=o es para especificar que se traze la linea con puntos
     xlab="Datasss", # titulo que aparece abajo
     ylab="Timesss", # titulo que aparece al lado izquierdo
     #col=c("blue"),  # color de la linea que lo va a unir
     #col=c(rgb(1, 1, 1)), # color de la linea que lo va a unir
     col="#55fff3",# color de la linea que lo va a unir
     lwd=5) # grosor de la linea


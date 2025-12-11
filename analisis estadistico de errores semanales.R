#Datos - errores corregidos cada dia de la semana
errores <- c(5, 8, 4, 7, 6, 9)

#solo en el primer elemento es la frecuencia norma, en lo demas es la frecuencia mas lo acumulado de lo anterior
erroresAcum <- cumsum(errores)

plot(erroresAcum,
     type="o", col="blue",
     lwd=2, 
     xlab="Semanas", 
     ylab="Errores semanales",
     main="Evolución de errores semanales")
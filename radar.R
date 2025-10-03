#importar libreria fmsb
library(fmsb)

#Datos a graficar
data <- data.frame(
  Mantenibilidad = c(10, 0, 8, 5),
  Usabilidad = c(10, 0, 7, 6),
  Eficiencia = c(10, 0, 6, 4),
  Seguridad = c(10, 0, 9, 7),
  Portabilidad = c(10, 0, 8, 6)
)

rownames(data) <- c("Max", "Min", "Version 1", "Version 2")
data

#Graficar
radarchart(data, axistype = 1,
           #pcol color de borde
           pcol = c("blue", "yellow"),
           #(scales::alpha("blue",0.5) para degradado Ocupa libreria "scales"
           pfcol = c(scales::alpha("blue",0.5),
           scales::alpha("yellow",0.5)),
           plwd = 2, plty=1,
           title = "Comparación entre 2 versiones de software")
legend("topright", legend = c("Version 1", 
                             "Version 2"),
                  col=c("blue", "yellow"), lty=1, lwd=2, bty="n")

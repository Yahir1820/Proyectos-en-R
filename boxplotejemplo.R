# Cargar librería necesaria
library(ggplot2)

# Crear los datos
datos <- data.frame(
  Fase = c("Diseño", "Codificación", "Pruebas"),
  Mediana = c(2, 6, 10),
  Variabilidad = c("Baja", "Moderada", "Alta"),
  Estabilidad = c("Alta", "Media", "Baja")
)

# Crear el gráfico
ggplot(datos, aes(x = Fase, y = Mediana)) +
  geom_point(size = 5, color = "steelblue") +  # Punto para la mediana
  geom_text(aes(label = paste("Mediana:", Mediana)), 
            vjust = -1.5, size = 4.5) +  # Etiqueta de mediana
  geom_text(aes(label = paste("Variabilidad:", Variabilidad)), 
            vjust = 1.5, size = 3.8, color = "darkgreen") +  # Etiqueta de variabilidad
  geom_text(aes(label = paste("Estabilidad:", Estabilidad)), 
            vjust = 3.2, size = 3.8, color = "brown") +  # Etiqueta de estabilidad
  ylim(0, 12) +
  labs(title = "Mediana, Variabilidad y Estabilidad por Fase",
       y = "Mediana",
       x = "Fase") +
  theme_minimal(base_size = 14)

valorX <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
valorY <- c(8, 8, 13, 11, 16, 16, 19, 21, 23, 24, 28, 27, 33, 32, 36)
nx <- length(valorX)
ny <- length(valorY)

#mean() sirve para calcular media
mediaX <- sum(valorX) / nx
mediaX

mediaY <- sum(valorY) / ny
mediaY

rangoX <- max(valorX) - min(valorX)
rangoX

rangoY <- max(valorY) - min(valorY)
rangoY

varianzaX <- sum((valorX - mediaX)^2)/(nx-1)
varianzaX

#se puede sacar raiz cuadrada con sqrt() o elevando a 0.5 (**0.5)
desviacionEstX <- sqrt(varianzaX)
desviacionEstX

varianzaY <- sum((valorY - mediaY)^2)/(ny-1)
varianzaY

desviacionEstY <- sqrt(varianzaY)
desviacionEstY

coeficienteVarX <- desviacionEstX/mediaX*100
coeficienteVarX

coeficienteVarY <- desviacionEstY/mediaY*100
coeficienteVarY

covarianza <- sum((valorX-mediaX)*(valorY-mediaY))/(nx-1)
covarianza

SxSy <- desviacionEstX*desviacionEstY
coeficienteCor <- covarianza / SxSy
coeficienteCor

b1 <- sum((valorX-mediaX)*(valorY-mediaY))/sum((valorX - mediaX)^2)
b1

b0 <- mediaY - b1 * mediaX
b0

YEstimada <- b0 + b1 *valorX
YEstimada

SCE <- sum((valorY-YEstimada)^2)
SCE

STC <- sum((valorY-mediaY)^2)
STC

SCR <- sum((YEstimada-mediaY)^2)
SCR

CoefiDeter <- SCR/STC
CoefiDeter
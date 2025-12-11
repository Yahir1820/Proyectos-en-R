valorX <- c(1, 2, 3, 4, 5, 6, 7, 8, 10)
valorY <- c(10, 9, 8, 7, 65, 4, 3, 2 , 1)
nx <- length(valorX)
ny <- length(valorY)

mediaX <- sum(valorX) / nx
mediaX

mediaY <- mean(valorY)
mediaY

rangoX <- max(valorX) - min(valorX)
rangoX

rangoY <- max(valorY) - min(valorY)
rangoY

varianzaX <- sum((valorX - mediaX)**2 ) / (nx - 1)
varianzaX

varianzaY <- sum((valorY - mediaY)**2 ) / (ny - 1)
varianzaY

desEstX <- sqrt(varianzaX)
desEstX

desEstY <- sqrt(varianzaY)
desEstY

coeficienteVarX <- desEstX/mediaX*100
coeficienteVarX

coeficienteVarY <- desEstY/mediaY*100
coeficienteVarY

covarianza <- sum((valorX-mediaX)*(valorY-mediaY))/(nx-1)
covarianza

SxSy <- desEstX*desEstY
coeficienteCor <- covarianza/SxSy
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

plot(valorX, valorY,
     type="o")
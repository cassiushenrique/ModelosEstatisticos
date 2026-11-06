# Regressão quantílica ----

# Ajuste e resultados ----
if (!requireNamespace("quantreg", quietly = TRUE)) install.packages("quantreg")
library(quantreg)
ajuste <- rq(dist ~ speed, tau = 0.5, data = cars)
print(summary(ajuste, se = "nid"))
plot(dist ~ speed, data = cars)
abline(ajuste, col = "red", lwd = 2)

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

# Regressão local (LOESS) ----

# Ajuste e resultados ----
ajuste <- loess(dist ~ speed, data = cars, span = 0.7)
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(ajuste, newdata = x), col = "red", lwd = 2)
print(summary(ajuste))

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

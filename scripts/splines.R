# Splines de regressão ----

# Ajuste e resultados ----
library(splines) # pacote recomendado, acompanha R
linear <- lm(dist ~ speed, data = cars)
flex <- lm(dist ~ bs(speed, df = 4), data = cars)
print(anova(linear, flex))
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(flex, x), col = "red", lwd = 2)

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

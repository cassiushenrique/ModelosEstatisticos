# Regressão polinomial ----

# Ajuste e resultados ----
m1 <- lm(dist ~ speed, data = cars)
m2 <- lm(dist ~ speed + I(speed^2), data = cars)
print(anova(m1, m2))
print(confint(m2))
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(m2, x), col = "red", lwd = 2)

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

# Mínimos quadrados ponderados (WLS) ----

# Ajuste e resultados ----
d <- cars
# Pesos didáticos: supõe Var(erro | speed) proporcional a speed²
w <- 1 / d$speed^2
ajuste <- lm(dist ~ speed, data = d, weights = w)
print(summary(ajuste)); print(confint(ajuste))
plot(fitted(ajuste), residuals(ajuste) * sqrt(w),
     xlab = "Ajustados", ylab = "Resíduos ponderados")
abline(h = 0, col = "red")

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

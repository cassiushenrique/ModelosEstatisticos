# Smoothing splines ----

# Ajuste e resultados ----
ajuste <- smooth.spline(cars$speed, cars$dist, cv = FALSE)
print(c(df_efetivo = ajuste$df, spar = ajuste$spar))
plot(dist ~ speed, data = cars)
lines(ajuste, col = "red", lwd = 2)

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

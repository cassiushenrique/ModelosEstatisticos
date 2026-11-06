# Leave-one-out cross-validation (LOOCV) ----

# Ajuste e resultados ----
ajuste <- lm(dist ~ speed, data = cars)
e <- residuals(ajuste); h <- hatvalues(ajuste)
MSE_LOOCV <- mean((e / (1 - h))^2)
print(c(MSE_LOOCV = MSE_LOOCV,
        RMSE_LOOCV = sqrt(MSE_LOOCV)))

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

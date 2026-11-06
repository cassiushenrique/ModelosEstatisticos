# Regressão linear simples ----

# Ajuste e resultados ----
ajuste <- lm(dist ~ speed, data = cars)
print(summary(ajuste))
print(confint(ajuste, level = 0.95))
print(predict(ajuste, newdata = data.frame(speed = 20),
              interval = "prediction", level = 0.95))
plot(ajuste, which = 1)

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

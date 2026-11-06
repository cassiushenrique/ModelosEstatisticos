# Compromisso viés–variância ----

# Ajuste e resultados ----
set.seed(2026)
k <- 5; fold <- sample(rep(1:k, length.out = nrow(cars)))
erros <- sapply(1:6, function(grau) {
  pred <- rep(NA_real_, nrow(cars))
  for (j in 1:k) {
    mod <- lm(dist ~ poly(speed, grau, raw = TRUE),
              data = cars[fold != j, ])
    pred[fold == j] <- predict(mod, cars[fold == j, ])
  }
  sqrt(mean((cars$dist - pred)^2))
})
print(data.frame(grau = 1:6, RMSE_CV = erros))

# Visualização e diagnóstico ----
plot(dist ~ speed, data = cars, pch = 19, xlab = "Velocidade (mph)", ylab = "Distância de parada (pés)")
lines(lowess(cars$speed, cars$dist), col = "red", lwd = 2)

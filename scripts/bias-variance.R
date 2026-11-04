# Compromisso viés–variância
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

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

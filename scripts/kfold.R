# Validação cruzada k-fold
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

set.seed(2026)
n <- nrow(mtcars); k <- 5
fold <- sample(rep(seq_len(k), length.out = n))
pred <- rep(NA_real_, n)
for (j in seq_len(k)) {
  ajuste <- lm(mpg ~ wt + hp, data = mtcars[fold != j, ])
  pred[fold == j] <- predict(ajuste, mtcars[fold == j, ])
}
print(c(RMSE_CV = sqrt(mean((mtcars$mpg - pred)^2)),
        MAE_CV = mean(abs(mtcars$mpg - pred))))

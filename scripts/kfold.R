# Validação cruzada k-fold ----

# Ajuste e resultados ----
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

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

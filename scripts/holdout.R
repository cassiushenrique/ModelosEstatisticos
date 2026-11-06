# Separação treino–teste (holdout) ----

# Ajuste e resultados ----
set.seed(2026)
i <- sample(seq_len(nrow(mtcars)), size = 22)
treino <- mtcars[i, ]; teste <- mtcars[-i, ]
ajuste <- lm(mpg ~ wt + hp, data = treino)
pred <- predict(ajuste, newdata = teste)
print(c(RMSE_teste = sqrt(mean((teste$mpg - pred)^2)),
        MAE_teste = mean(abs(teste$mpg - pred))))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

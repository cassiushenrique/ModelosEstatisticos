# Métricas de classificação e curva ROC ----

# Ajuste e resultados ----
set.seed(2026)
i <- sample.int(nrow(mtcars), 22)
ajuste <- glm(am ~ wt + hp, data = mtcars[i, ],
              family = binomial())
prob <- predict(ajuste, newdata = mtcars[-i, ], type = "response")
prev <- as.integer(prob >= 0.5)
tab <- table(real = factor(mtcars$am[-i], levels = 0:1),
             previsto = factor(prev, levels = 0:1))
print(tab)
print(sum(diag(tab)) / sum(tab))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

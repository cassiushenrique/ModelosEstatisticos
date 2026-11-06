# Regressão logística binária ----

# Ajuste e resultados ----
ajuste <- glm(am ~ wt + hp, data = mtcars, family = binomial())
print(summary(ajuste))
print(exp(cbind(Razao_de_chances = coef(ajuste), confint.default(ajuste))))
prob <- predict(ajuste, type = "response")
print(table(real = mtcars$am, previsto = as.integer(prob >= 0.5)))

# Visualização e diagnóstico ----
plot(mtcars$wt, prob, pch = 19, col = ifelse(mtcars$am == 1, "#12372A", "#C68A3B"),
     xlab = "Massa (mil libras)", ylab = "Probabilidade estimada de transmissão manual")
abline(h = 0.5, lty = 2)

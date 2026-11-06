# Regressão linear múltipla ----

# Ajuste e resultados ----
ajuste <- lm(mpg ~ wt + hp, data = mtcars)
print(summary(ajuste))
print(confint(ajuste))
par(mfrow = c(2, 2)); plot(ajuste); par(mfrow = c(1, 1))
print(predict(ajuste, data.frame(wt = 3, hp = 120),
              interval = "prediction"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

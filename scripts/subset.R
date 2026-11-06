# Seleção exaustiva de subconjuntos ----

# Ajuste e resultados ----
if (!requireNamespace("leaps", quietly = TRUE)) install.packages("leaps")
library(leaps)
d <- mtcars[, c("mpg", "wt", "hp", "disp", "qsec", "drat")]
ajuste <- regsubsets(mpg ~ ., data = d, nvmax = 5)
s <- summary(ajuste)
melhor <- which.min(s$bic)
print(c(modelo = melhor, BIC = s$bic[melhor]))
print(coef(ajuste, id = melhor))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

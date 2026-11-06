# Regressão por mínimos quadrados parciais (PLS) ----

# Ajuste e resultados ----
if (!requireNamespace("pls", quietly = TRUE)) install.packages("pls")
library(pls)
ajuste <- plsr(mpg ~ wt + hp + disp + qsec,
               data = mtcars, scale = TRUE, validation = "CV")
print(summary(ajuste))
print(RMSEP(ajuste, estimate = "CV"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

# Coeficiente de concordância de Kendall (W) ----

# Ajuste e resultados ----
if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
set.seed(2026)
ratings <- data.frame(
  avaliador_1 = mtcars$hp + rnorm(32, 0, 8),
  avaliador_2 = mtcars$hp + rnorm(32, 0, 8),
  avaliador_3 = mtcars$hp + rnorm(32, 0, 8))
print(kendall(ratings, correct = TRUE))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

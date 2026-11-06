# Kappa ponderado ----

# Ajuste e resultados ----
if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
d <- data.frame(
  sistema_A = cut(mtcars$hp, breaks = 3, labels = c("B", "M", "A")),
  sistema_B = cut(mtcars$wt, breaks = 3, labels = c("B", "M", "A")))
print(kappa2(d, weight = "squared"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

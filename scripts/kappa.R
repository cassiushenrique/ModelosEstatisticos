# Kappa de Cohen ----

# Ajuste e resultados ----
if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
avaliacoes <- data.frame(
  sistema_A = factor(ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo")),
  sistema_B = factor(ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo")))
print(table(avaliacoes))
print(kappa2(avaliacoes, weight = "unweighted"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

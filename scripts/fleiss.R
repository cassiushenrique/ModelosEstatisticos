# Kappa de Fleiss ----

# Ajuste e resultados ----
if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
ratings <- data.frame(
  A = ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo"),
  B = ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo"),
  C = ifelse(mtcars$wt > median(mtcars$wt), "alto", "baixo"))
print(kappam.fleiss(ratings))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

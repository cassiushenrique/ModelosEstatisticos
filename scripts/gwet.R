# Coeficiente AC1 de Gwet ----

# Ajuste e resultados ----
if (!requireNamespace("irrCAC", quietly = TRUE)) install.packages("irrCAC")
library(irrCAC)
ratings <- data.frame(
  A = ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo"),
  B = ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo"))
print(gwet.ac1.raw(ratings, conflev = 0.95)$est)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

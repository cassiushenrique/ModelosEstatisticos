# Coeficiente de correlação intraclasse (ICC) ----

# Ajuste e resultados ----
if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
set.seed(2026)
medicoes <- data.frame(
  instrumento_1 = mtcars$hp + rnorm(nrow(mtcars), sd = 3),
  instrumento_2 = mtcars$hp + rnorm(nrow(mtcars), sd = 3))
print(icc(medicoes, model = "twoway", type = "agreement",
          unit = "single", conf.level = 0.95))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

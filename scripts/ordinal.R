# Regressão logística ordinal ----

# Ajuste e resultados ----
if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
d <- transform(mtcars, gear = ordered(gear))
ajuste <- polr(gear ~ wt + hp, data = d, Hess = TRUE)
print(summary(ajuste))
print(predict(ajuste, newdata = d[1:5, ], type = "probs"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

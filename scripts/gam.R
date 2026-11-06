# Modelos aditivos generalizados (GAM) ----

# Ajuste e resultados ----
if (!requireNamespace("mgcv", quietly = TRUE)) install.packages("mgcv")
library(mgcv)
ajuste <- gam(mpg ~ s(wt, k = 5) + s(hp, k = 5),
              data = mtcars, method = "REML")
print(summary(ajuste))
par(mfrow = c(1, 2)); plot(ajuste, shade = TRUE)
par(mfrow = c(1, 1))
gam.check(ajuste)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

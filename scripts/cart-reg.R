# Árvore de regressão (CART) ----

# Ajuste e resultados ----
if (!requireNamespace("rpart", quietly = TRUE)) install.packages("rpart")
library(rpart)
set.seed(2026)
ajuste <- rpart(mpg ~ wt + hp + qsec, data = mtcars,
               method = "anova", control = rpart.control(cp = 0.01))
printcp(ajuste)
plot(ajuste); text(ajuste, use.n = TRUE, cex = 0.8)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

# Regressão ridge ----

# Ajuste e resultados ----
if (!requireNamespace("glmnet", quietly = TRUE)) install.packages("glmnet")
library(glmnet)
set.seed(2026)
x <- model.matrix(mpg ~ wt + hp + disp + qsec, mtcars)[, -1]
y <- mtcars$mpg
ajuste <- cv.glmnet(x, y, alpha = 0, nfolds = 5)
print(ajuste$lambda.min)
print(coef(ajuste, s = "lambda.min"))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

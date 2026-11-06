# Regressão lasso ----

# Ajuste e resultados ----
if (!requireNamespace("glmnet", quietly = TRUE)) install.packages("glmnet")
library(glmnet)
set.seed(2026)
x <- model.matrix(mpg ~ wt + hp + disp + qsec + drat, mtcars)[, -1]
y <- mtcars$mpg
ajuste <- cv.glmnet(x, y, alpha = 1, nfolds = 5)
print(coef(ajuste, s = "lambda.min"))
plot(ajuste)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

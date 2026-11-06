# Bagging (bootstrap aggregation) ----

# Ajuste e resultados ----
if (!requireNamespace("randomForest", quietly = TRUE)) install.packages("randomForest")
library(randomForest)
set.seed(2026)
ajuste <- randomForest(mpg ~ wt + hp + disp,
                       data = mtcars, mtry = 3, ntree = 400,
                       importance = TRUE)
print(ajuste)
print(importance(ajuste))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

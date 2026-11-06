# Regressão logística multinomial ----

# Ajuste e resultados ----
if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
d <- transform(mtcars, cyl = factor(cyl))
ajuste <- multinom(cyl ~ wt + hp, data = d, trace = FALSE)
print(summary(ajuste))
print(head(predict(ajuste, type = "probs")))
print(table(real = d$cyl, previsto = predict(ajuste)))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

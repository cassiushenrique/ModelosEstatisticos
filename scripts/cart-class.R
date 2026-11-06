# Árvore de classificação (CART) ----

# Ajuste e resultados ----
if (!requireNamespace("rpart", quietly = TRUE)) install.packages("rpart")
library(rpart)
d <- transform(mtcars, am = factor(am))
ajuste <- rpart(am ~ wt + hp, data = d, method = "class",
               control = rpart.control(cp = 0.01))
printcp(ajuste)
plot(ajuste); text(ajuste, use.n = TRUE)
print(table(real = d$am, previsto = predict(ajuste, type = "class")))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)

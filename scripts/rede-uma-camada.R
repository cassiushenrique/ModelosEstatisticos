# Rede sem camada oculta (classificador logístico) ----

# Ajuste e resultados ----
if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
set.seed(2026)
d <- mtcars
d$wt <- as.numeric(scale(d$wt))
d$hp <- as.numeric(scale(d$hp))
d$am <- factor(d$am)
ajuste <- nnet(am ~ wt + hp, data = d, size = 0,
              skip = TRUE, entropy = TRUE, maxit = 500,
              trace = FALSE)
print(table(real = d$am,
            previsto = predict(ajuste, type = "class")))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, col = factor(mtcars$cyl), pch = 19, xlab = "Massa (mil libras)", ylab = "Potência", main = "Características e classes de veículos")

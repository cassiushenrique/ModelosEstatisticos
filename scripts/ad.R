# Anderson–Darling (normalidade) ----

# Ajuste e resultados ----
if (!requireNamespace("nortest", quietly = TRUE)) install.packages("nortest")
library(nortest)
x <- cars$dist
print(ad.test(x))
qqnorm(x); qqline(x, col = "red")

# Visualização e diagnóstico ----
hist(cars$dist, breaks = "FD", main = "Distância de parada", xlab = "Distância (pés)")
qqnorm(cars$dist); qqline(cars$dist, col = "red", lwd = 2)

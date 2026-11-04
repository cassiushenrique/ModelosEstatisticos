# Anderson–Darling (normalidade)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("nortest", quietly = TRUE)) install.packages("nortest")
library(nortest)
x <- cars$dist
print(ad.test(x))
qqnorm(x); qqline(x, col = "red")

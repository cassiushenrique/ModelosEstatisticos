# Anderson–Darling (normalidade)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("nortest", quietly = TRUE)) install.packages("nortest")
library(nortest)
x <- cars$dist
print(ad.test(x))
qqnorm(x); qqline(x, col = "red")

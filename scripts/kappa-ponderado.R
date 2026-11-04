# Kappa ponderado
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
d <- data.frame(
  sistema_A = cut(mtcars$hp, breaks = 3, labels = c("B", "M", "A")),
  sistema_B = cut(mtcars$wt, breaks = 3, labels = c("B", "M", "A")))
print(kappa2(d, weight = "squared"))

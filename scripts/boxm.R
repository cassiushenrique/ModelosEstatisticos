# M de Box
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("biotools", quietly = TRUE)) install.packages("biotools")
library(biotools)
print(boxM(iris[, 1:4], iris$Species))

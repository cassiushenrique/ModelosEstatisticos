# M de Box
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("biotools", quietly = TRUE)) install.packages("biotools")
library(biotools)
print(boxM(iris[, 1:4], iris$Species))

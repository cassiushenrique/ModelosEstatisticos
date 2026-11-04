# Coeficiente de concordância de Kendall (W)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
set.seed(2026)
ratings <- data.frame(
  avaliador_1 = mtcars$hp + rnorm(32, 0, 8),
  avaliador_2 = mtcars$hp + rnorm(32, 0, 8),
  avaliador_3 = mtcars$hp + rnorm(32, 0, 8))
print(kendall(ratings, correct = TRUE))

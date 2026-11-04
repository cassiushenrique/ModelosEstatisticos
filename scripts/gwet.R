# Coeficiente AC1 de Gwet
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("irrCAC", quietly = TRUE)) install.packages("irrCAC")
library(irrCAC)
ratings <- data.frame(
  A = ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo"),
  B = ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo"))
print(gwet.ac1.raw(ratings, conflev = 0.95)$est)

# Kappa de Fleiss
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
ratings <- data.frame(
  A = ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo"),
  B = ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo"),
  C = ifelse(mtcars$wt > median(mtcars$wt), "alto", "baixo"))
print(kappam.fleiss(ratings))

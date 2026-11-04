# Kappa de Fleiss
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
ratings <- data.frame(
  A = ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo"),
  B = ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo"),
  C = ifelse(mtcars$wt > median(mtcars$wt), "alto", "baixo"))
print(kappam.fleiss(ratings))

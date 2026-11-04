# Kappa de Cohen
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
avaliacoes <- data.frame(
  sistema_A = factor(ifelse(mtcars$hp > median(mtcars$hp), "alto", "baixo")),
  sistema_B = factor(ifelse(mtcars$mpg < median(mtcars$mpg), "alto", "baixo")))
print(table(avaliacoes))
print(kappa2(avaliacoes, weight = "unweighted"))

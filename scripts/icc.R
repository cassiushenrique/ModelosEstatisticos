# Coeficiente de correlação intraclasse (ICC)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("irr", quietly = TRUE)) install.packages("irr")
library(irr)
set.seed(2026)
medicoes <- data.frame(
  instrumento_1 = mtcars$hp + rnorm(nrow(mtcars), sd = 3),
  instrumento_2 = mtcars$hp + rnorm(nrow(mtcars), sd = 3))
print(icc(medicoes, model = "twoway", type = "agreement",
          unit = "single", conf.level = 0.95))

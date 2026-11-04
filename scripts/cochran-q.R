# Teste Q de Cochran
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("DescTools", quietly = TRUE)) install.packages("DescTools")
library(DescTools)
w <- reshape(CO2[, c("Plant", "conc", "uptake")],
             idvar = "Plant", timevar = "conc", direction = "wide")
X <- 1L * (as.matrix(w[, -1]) > 20)
print(CochranQTest(X))

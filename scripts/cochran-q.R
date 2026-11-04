# Teste Q de Cochran
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("DescTools", quietly = TRUE)) install.packages("DescTools")
library(DescTools)
w <- reshape(CO2[, c("Plant", "conc", "uptake")],
             idvar = "Plant", timevar = "conc", direction = "wide")
X <- 1L * (as.matrix(w[, -1]) > 20)
print(CochranQTest(X))

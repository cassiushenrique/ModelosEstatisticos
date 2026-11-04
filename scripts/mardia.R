# Mardia (normalidade multivariada)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("MVN", quietly = TRUE)) install.packages("MVN")
library(MVN)
X <- iris[, 1:4]
resultado <- mvn(data = X, mvn_test = "mardia")
print(resultado)

# Mardia (normalidade multivariada)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("MVN", quietly = TRUE)) install.packages("MVN")
library(MVN)
X <- iris[, 1:4]
resultado <- mvn(data = X, mvn_test = "mardia")
print(resultado)

# Bagging (bootstrap aggregation)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("randomForest", quietly = TRUE)) install.packages("randomForest")
library(randomForest)
set.seed(2026)
ajuste <- randomForest(mpg ~ wt + hp + disp,
                       data = mtcars, mtry = 3, ntree = 400,
                       importance = TRUE)
print(ajuste)
print(importance(ajuste))

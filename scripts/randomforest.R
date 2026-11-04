# Random forests
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("randomForest", quietly = TRUE)) install.packages("randomForest")
library(randomForest)
set.seed(2026)
ajuste <- randomForest(mpg ~ wt + hp + disp + qsec,
                       data = mtcars, mtry = 2,
                       ntree = 500, importance = TRUE)
print(ajuste)
print(importance(ajuste))

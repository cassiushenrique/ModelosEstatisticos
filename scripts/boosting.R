# Gradient boosting de árvores
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("gbm", quietly = TRUE)) install.packages("gbm")
library(gbm)
set.seed(2026)
ajuste <- gbm(mpg ~ wt + hp + disp, data = mtcars,
              distribution = "gaussian", n.trees = 300,
              interaction.depth = 2, shrinkage = 0.03,
              n.minobsinnode = 3, cv.folds = 5, verbose = FALSE)
melhor <- gbm.perf(ajuste, method = "cv", plot.it = FALSE)
print(c(arvores_selecionadas = melhor))
print(summary(ajuste, n.trees = melhor, plotit = FALSE))

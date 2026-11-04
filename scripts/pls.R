# Regressão por mínimos quadrados parciais (PLS)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("pls", quietly = TRUE)) install.packages("pls")
library(pls)
ajuste <- plsr(mpg ~ wt + hp + disp + qsec,
               data = mtcars, scale = TRUE, validation = "CV")
print(summary(ajuste))
print(RMSEP(ajuste, estimate = "CV"))

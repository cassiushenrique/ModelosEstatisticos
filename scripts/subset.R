# Seleção exaustiva de subconjuntos
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("leaps", quietly = TRUE)) install.packages("leaps")
library(leaps)
d <- mtcars[, c("mpg", "wt", "hp", "disp", "qsec", "drat")]
ajuste <- regsubsets(mpg ~ ., data = d, nvmax = 5)
s <- summary(ajuste)
melhor <- which.min(s$bic)
print(c(modelo = melhor, BIC = s$bic[melhor]))
print(coef(ajuste, id = melhor))

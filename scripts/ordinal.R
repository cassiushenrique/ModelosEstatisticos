# Regressão logística ordinal
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
d <- transform(mtcars, gear = ordered(gear))
ajuste <- polr(gear ~ wt + hp, data = d, Hess = TRUE)
print(summary(ajuste))
print(predict(ajuste, newdata = d[1:5, ], type = "probs"))

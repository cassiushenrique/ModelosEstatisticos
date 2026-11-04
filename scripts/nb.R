# Regressão binomial negativa
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
ajuste <- glm.nb(breaks ~ tension + wool, data = warpbreaks)
print(summary(ajuste))
print(exp(cbind(razao_medias = coef(ajuste),
                confint.default(ajuste))))
print(ajuste$theta)

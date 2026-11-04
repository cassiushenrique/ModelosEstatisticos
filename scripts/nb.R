# Regressão binomial negativa
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
ajuste <- glm.nb(breaks ~ tension + wool, data = warpbreaks)
print(summary(ajuste))
print(exp(cbind(razao_medias = coef(ajuste),
                confint.default(ajuste))))
print(ajuste$theta)

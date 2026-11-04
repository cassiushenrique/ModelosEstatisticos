# Regressão de Poisson
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- glm(breaks ~ tension + wool, data = warpbreaks,
              family = poisson(link = "log"))
print(summary(ajuste))
print(exp(cbind(razao_taxas = coef(ajuste),
                confint.default(ajuste))))
print(sum(residuals(ajuste, type = "pearson")^2) / df.residual(ajuste))

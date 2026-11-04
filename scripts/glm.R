# Modelos lineares generalizados (GLM)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- glm(Volume ~ Girth + Height, data = trees,
              family = Gamma(link = "log"))
print(summary(ajuste))
print(exp(coef(ajuste)))
plot(fitted(ajuste), residuals(ajuste, type = "deviance"),
     xlab = "Volume ajustado", ylab = "Resíduos deviance")

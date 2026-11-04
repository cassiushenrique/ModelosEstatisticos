# Modelos lineares generalizados (GLM)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- glm(Volume ~ Girth + Height, data = trees,
              family = Gamma(link = "log"))
print(summary(ajuste))
print(exp(coef(ajuste)))
plot(fitted(ajuste), residuals(ajuste, type = "deviance"),
     xlab = "Volume ajustado", ylab = "Resíduos deviance")

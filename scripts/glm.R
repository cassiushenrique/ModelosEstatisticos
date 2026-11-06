# Modelos lineares generalizados (GLM) ----

# Ajuste e resultados ----
ajuste <- glm(Volume ~ Girth + Height, data = trees,
              family = Gamma(link = "log"))
print(summary(ajuste))
print(exp(coef(ajuste)))
plot(fitted(ajuste), residuals(ajuste, type = "deviance"),
     xlab = "Volume ajustado", ylab = "Resíduos deviance")

# Visualização e diagnóstico ----
plot(Volume ~ Girth, data = trees, pch = 19, xlab = "Diâmetro", ylab = "Volume")

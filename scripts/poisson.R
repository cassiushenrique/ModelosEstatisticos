# Regressão de Poisson ----

# Ajuste e resultados ----
ajuste <- glm(breaks ~ tension + wool, data = warpbreaks,
              family = poisson(link = "log"))
print(summary(ajuste))
print(exp(cbind(razao_taxas = coef(ajuste),
                confint.default(ajuste))))
print(sum(residuals(ajuste, type = "pearson")^2) / df.residual(ajuste))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios")

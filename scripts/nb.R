# Regressão binomial negativa ----

# Ajuste e resultados ----
if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
ajuste <- glm.nb(breaks ~ tension + wool, data = warpbreaks)
print(summary(ajuste))
print(exp(cbind(razao_medias = coef(ajuste),
                confint.default(ajuste))))
print(ajuste$theta)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios")

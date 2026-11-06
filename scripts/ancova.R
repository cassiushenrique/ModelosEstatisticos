# ANCOVA ----

# Ajuste e resultados ----
modelo_interacao <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
print(anova(modelo_interacao))
modelo <- lm(Sepal.Length ~ Species + Sepal.Width, data = iris)
print(anova(modelo))
print(confint(modelo))

# Visualização e diagnóstico ----
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 19, xlab = "Comprimento da sépala", ylab = "Comprimento da pétala")

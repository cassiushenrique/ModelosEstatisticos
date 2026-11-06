# MANCOVA ----

# Ajuste e resultados ----
modelo <- manova(cbind(Sepal.Length, Petal.Length) ~ Species + Sepal.Width,
                 data = iris)
print(summary(modelo, test = "Pillai"))
print(summary.aov(modelo))

# Visualização e diagnóstico ----
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 19, xlab = "Comprimento da sépala", ylab = "Comprimento da pétala")

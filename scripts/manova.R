# MANOVA ----

# Ajuste e resultados ----
ajuste <- manova(cbind(Sepal.Length, Petal.Length) ~ Species, data = iris)
print(summary(ajuste, test = "Pillai"))
print(summary.aov(ajuste))

# Visualização e diagnóstico ----
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 19, xlab = "Comprimento da sépala", ylab = "Comprimento da pétala")

# K-means ----

# Ajuste e resultados ----
set.seed(2026)
X <- scale(mtcars[, c("mpg", "hp", "wt")])
ajuste <- kmeans(X, centers = 3, nstart = 50)
print(ajuste$centers)
print(ajuste$tot.withinss)
print(table(ajuste$cluster))
plot(X[, 1:2], col = ajuste$cluster, pch = 19,
     xlab = "mpg padronizado", ylab = "hp padronizado")

# Visualização e diagnóstico ----
plot(X[,1:2], col = ajuste$cluster, pch = 19, xlab = "Autonomia (padronizada)", ylab = "Potência (padronizada)", main = "Grupos obtidos")

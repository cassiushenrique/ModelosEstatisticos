# K-means
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

set.seed(2026)
X <- scale(mtcars[, c("mpg", "hp", "wt")])
ajuste <- kmeans(X, centers = 3, nstart = 50)
print(ajuste$centers)
print(ajuste$tot.withinss)
print(table(ajuste$cluster))
plot(X[, 1:2], col = ajuste$cluster, pch = 19,
     xlab = "mpg padronizado", ylab = "hp padronizado")

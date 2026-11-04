# Agrupamento hierárquico
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

X <- scale(mtcars[, c("mpg", "wt", "hp", "qsec")])
ajuste <- hclust(dist(X), method = "ward.D2")
plot(ajuste, labels = FALSE, main = "Veículos: dendrograma")
grupos <- cutree(ajuste, k = 3)
print(table(grupos))
print(aggregate(mtcars[, c("mpg", "wt", "hp")],
                by = list(grupo = grupos), mean))

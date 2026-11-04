# Agrupamento hierárquico
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

X <- scale(mtcars[, c("mpg", "wt", "hp", "qsec")])
ajuste <- hclust(dist(X), method = "ward.D2")
plot(ajuste, labels = FALSE, main = "Veículos: dendrograma")
grupos <- cutree(ajuste, k = 3)
print(table(grupos))
print(aggregate(mtcars[, c("mpg", "wt", "hp")],
                by = list(grupo = grupos), mean))

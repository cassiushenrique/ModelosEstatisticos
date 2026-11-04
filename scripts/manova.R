# MANOVA
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- manova(cbind(Sepal.Length, Petal.Length) ~ Species, data = iris)
print(summary(ajuste, test = "Pillai"))
print(summary.aov(ajuste))

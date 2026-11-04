# MANCOVA
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

modelo <- manova(cbind(Sepal.Length, Petal.Length) ~ Species + Sepal.Width,
                 data = iris)
print(summary(modelo, test = "Pillai"))
print(summary.aov(modelo))

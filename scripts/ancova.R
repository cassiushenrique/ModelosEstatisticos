# ANCOVA
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

modelo_interacao <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
print(anova(modelo_interacao))
modelo <- lm(Sepal.Length ~ Species + Sepal.Width, data = iris)
print(anova(modelo))
print(confint(modelo))

# ANCOVA
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

modelo_interacao <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
print(anova(modelo_interacao))
modelo <- lm(Sepal.Length ~ Species + Sepal.Width, data = iris)
print(anova(modelo))
print(confint(modelo))

# MANCOVA
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

modelo <- manova(cbind(Sepal.Length, Petal.Length) ~ Species + Sepal.Width,
                 data = iris)
print(summary(modelo, test = "Pillai"))
print(summary.aov(modelo))

# MANOVA
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- manova(cbind(Sepal.Length, Petal.Length) ~ Species, data = iris)
print(summary(ajuste, test = "Pillai"))
print(summary.aov(ajuste))

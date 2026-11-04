# Teste de McNemar
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
             timevar = "conc", direction = "wide")
tab <- table(baixo = w$uptake.95 > 15,
             alto = w$uptake.175 > 15)
print(tab)
print(mcnemar.test(tab))

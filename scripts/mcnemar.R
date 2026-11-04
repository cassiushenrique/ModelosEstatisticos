# Teste de McNemar
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
             timevar = "conc", direction = "wide")
tab <- table(baixo = w$uptake.95 > 15,
             alto = w$uptake.175 > 15)
print(tab)
print(mcnemar.test(tab))

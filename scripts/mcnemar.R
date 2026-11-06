# Teste de McNemar ----

# Ajuste e resultados ----
d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
             timevar = "conc", direction = "wide")
tab <- table(baixo = w$uptake.95 > 15,
             alto = w$uptake.175 > 15)
print(tab)
print(mcnemar.test(tab))

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

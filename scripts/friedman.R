# Teste de Friedman ----

# Ajuste e resultados ----
d <- CO2
d$conc <- factor(d$conc)
print(friedman.test(uptake ~ conc | Plant, data = d))

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

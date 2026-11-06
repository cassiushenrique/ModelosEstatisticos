# Teste de Yuen robusto pareado (Yuend) ----

# Ajuste e resultados ----
if (!requireNamespace("WRS2", quietly = TRUE)) install.packages("WRS2")
library(WRS2)
d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
             timevar = "conc", direction = "wide")
resultado <- yuend(w$uptake.175, w$uptake.95, tr = 0.2)
print(resultado)

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

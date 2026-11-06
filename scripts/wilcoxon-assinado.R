# Wilcoxon signed-rank (pareado) ----

# Ajuste e resultados ----
d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")],
             idvar = "Plant", timevar = "conc", direction = "wide")
print(wilcox.test(w$uptake.175, w$uptake.95,
                  paired = TRUE, exact = FALSE,
                  conf.int = TRUE))

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")


# Análises unilaterais: use somente a direção definida antes da análise ----
# Ordem das diferenças: absorção a 175 menos absorção a 95
# H1: diferenca de localização positiva
print(wilcox.test(w$uptake.175, w$uptake.95, paired = TRUE, exact = FALSE, alternative = "greater"))
# H1: diferenca de localização negativa
print(wilcox.test(w$uptake.175, w$uptake.95, paired = TRUE, exact = FALSE, alternative = "less"))

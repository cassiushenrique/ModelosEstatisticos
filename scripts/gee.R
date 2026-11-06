# Equações de estimação generalizadas (GEE) ----

# Ajuste e resultados ----
if (!requireNamespace("geepack", quietly = TRUE)) install.packages("geepack")
library(geepack)
d <- CO2[order(CO2$Plant, CO2$conc), ]
d$Plant <- factor(d$Plant)
ajuste <- geeglm(uptake ~ conc + Type, id = Plant,
                data = d, family = gaussian(),
                corstr = "exchangeable")
print(summary(ajuste))

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

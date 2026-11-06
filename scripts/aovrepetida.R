# ANOVA de medidas repetidas ----

# Ajuste e resultados ----
if (!requireNamespace("ez", quietly = TRUE)) install.packages("ez")
library(ez)
d <- CO2
d$Plant <- factor(d$Plant); d$conc <- factor(d$conc)
resultado <- ezANOVA(data = d, dv = .(uptake), wid = .(Plant),
                     within = .(conc), detailed = TRUE)
print(resultado)

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

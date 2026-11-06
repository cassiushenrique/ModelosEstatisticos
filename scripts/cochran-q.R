# Teste Q de Cochran ----

# Ajuste e resultados ----
if (!requireNamespace("DescTools", quietly = TRUE)) install.packages("DescTools")
library(DescTools)
w <- reshape(CO2[, c("Plant", "conc", "uptake")],
             idvar = "Plant", timevar = "conc", direction = "wide")
X <- 1L * (as.matrix(w[, -1]) > 20)
print(CochranQTest(X))

# Visualização e diagnóstico ----
interaction.plot(CO2$conc, CO2$Type, CO2$uptake, xlab = "Concentração", ylab = "Absorção média de CO2", trace.label = "Origem")

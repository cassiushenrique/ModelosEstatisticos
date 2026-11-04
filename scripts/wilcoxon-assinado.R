# Wilcoxon signed-rank (pareado)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- subset(CO2, conc %in% c(95, 175))
w <- reshape(d[, c("Plant", "conc", "uptake")],
             idvar = "Plant", timevar = "conc", direction = "wide")
print(wilcox.test(w$uptake.175, w$uptake.95,
                  paired = TRUE, exact = FALSE,
                  conf.int = TRUE))

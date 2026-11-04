# Teste t pareado
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- subset(CO2, conc %in% c(95, 175))
wide <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
                timevar = "conc", direction = "wide")
resultado <- t.test(wide$uptake.175, wide$uptake.95,
                    paired = TRUE, conf.level = 0.95)
print(resultado)
qqnorm(wide$uptake.175 - wide$uptake.95); qqline(wide$uptake.175 - wide$uptake.95)

# Teste t pareado ----

# Ajuste e resultados ----
d <- subset(CO2, conc %in% c(95, 175))
wide <- reshape(d[, c("Plant", "conc", "uptake")], idvar = "Plant",
                timevar = "conc", direction = "wide")
resultado <- t.test(wide$uptake.175, wide$uptake.95,
                    paired = TRUE, conf.level = 0.95)
print(resultado)
qqnorm(wide$uptake.175 - wide$uptake.95); qqline(wide$uptake.175 - wide$uptake.95)

# Visualização e diagnóstico ----
dif <- wide$uptake.175 - wide$uptake.95
plot(wide$uptake.95, wide$uptake.175, pch = 19, xlab = "Absorção a 95", ylab = "Absorção a 175", main = "Medidas pareadas")
abline(0, 1, col = "red", lwd = 2, lty = 2)
qqnorm(dif, main = "Normalidade das diferenças")
qqline(dif, col = "red", lwd = 2)


# Análises unilaterais: use somente a direção definida antes da análise ----
# Ordem da diferença: absorção a 175 menos absorção a 95
# H1: diferenca media > 0
print(t.test(wide$uptake.175, wide$uptake.95, paired = TRUE, alternative = "greater"))
# H1: diferenca media < 0
print(t.test(wide$uptake.175, wide$uptake.95, paired = TRUE, alternative = "less"))

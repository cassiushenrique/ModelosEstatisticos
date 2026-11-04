# ANOVA de Welch
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

resultado <- oneway.test(breaks ~ tension, data = warpbreaks,
                       var.equal = FALSE)
print(resultado)
boxplot(breaks ~ tension, data = warpbreaks)

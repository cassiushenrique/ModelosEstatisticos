# ANOVA de Welch
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

resultado <- oneway.test(breaks ~ tension, data = warpbreaks,
                       var.equal = FALSE)
print(resultado)
boxplot(breaks ~ tension, data = warpbreaks)

# ANOVA fatorial
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- aov(breaks ~ wool * tension, data = warpbreaks)
print(summary(ajuste))
with(warpbreaks, interaction.plot(tension, wool, breaks))

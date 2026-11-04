# ANOVA fatorial
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- aov(breaks ~ wool * tension, data = warpbreaks)
print(summary(ajuste))
with(warpbreaks, interaction.plot(tension, wool, breaks))

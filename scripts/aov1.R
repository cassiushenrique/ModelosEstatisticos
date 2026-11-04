# ANOVA de um fator
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- aov(breaks ~ tension, data = warpbreaks)
print(summary(ajuste))
print(TukeyHSD(ajuste, conf.level = 0.95))
plot(ajuste, which = 1)

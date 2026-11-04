# ANOVA de um fator
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- aov(breaks ~ tension, data = warpbreaks)
print(summary(ajuste))
print(TukeyHSD(ajuste, conf.level = 0.95))
plot(ajuste, which = 1)

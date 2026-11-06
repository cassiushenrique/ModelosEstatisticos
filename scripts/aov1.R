# ANOVA de um fator ----

# Ajuste e resultados ----
ajuste <- aov(breaks ~ tension, data = warpbreaks)
print(summary(ajuste))
print(TukeyHSD(ajuste, conf.level = 0.95))
plot(ajuste, which = 1)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, warpbreaks, main = "Quebras por nível de tensão", ylab = "Quebras")
plot(ajuste, which = 2)

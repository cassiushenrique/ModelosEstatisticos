# ANOVA fatorial ----

# Ajuste e resultados ----
ajuste <- aov(breaks ~ wool * tension, data = warpbreaks)
print(summary(ajuste))
with(warpbreaks, interaction.plot(tension, wool, breaks))

# Visualização e diagnóstico ----
interaction.plot(warpbreaks$tension, warpbreaks$wool, warpbreaks$breaks, xlab = "Tensão", ylab = "Quebras médias", trace.label = "Tipo de lã")

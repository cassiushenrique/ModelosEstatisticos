# Tukey HSD / Tukey–Kramer ----

# Ajuste e resultados ----
modelo <- aov(breaks ~ tension, data = warpbreaks)
resultado <- TukeyHSD(modelo, conf.level = 0.95)
print(resultado)
plot(resultado)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

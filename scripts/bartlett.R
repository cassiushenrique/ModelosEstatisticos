# Bartlett ----

# Ajuste e resultados ----
by(warpbreaks$breaks, warpbreaks$tension, shapiro.test)
print(bartlett.test(breaks ~ tension, data = warpbreaks))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios", main = "Comparação das dispersões")

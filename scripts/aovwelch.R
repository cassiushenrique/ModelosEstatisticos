# ANOVA de Welch ----

# Ajuste e resultados ----
resultado <- oneway.test(breaks ~ tension, data = warpbreaks,
                       var.equal = FALSE)
print(resultado)
boxplot(breaks ~ tension, data = warpbreaks)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, warpbreaks, main = "Quebras por tensão", ylab = "Quebras")

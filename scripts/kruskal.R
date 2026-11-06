# Kruskal–Wallis ----

# Ajuste e resultados ----
resultado <- kruskal.test(breaks ~ tension, data = warpbreaks)
print(resultado)
print(pairwise.wilcox.test(warpbreaks$breaks, warpbreaks$tension,
                           p.adjust.method = "holm", exact = FALSE))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios")

# Ajuste de Bonferroni ----

# Ajuste e resultados ----
print(pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                      pool.sd = FALSE, p.adjust.method = "bonferroni"))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

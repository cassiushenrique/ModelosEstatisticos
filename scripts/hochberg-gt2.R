# Hochberg GT2 ----

# Ajuste e resultados ----
resultado <- pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                          pool.sd = FALSE, p.adjust.method = "holm")
print(resultado)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

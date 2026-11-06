# Ajuste de Šidák ----

# Ajuste e resultados ----
pbrutos <- pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                          pool.sd = FALSE, p.adjust.method = "none")$p.value
m <- sum(!is.na(pbrutos))
p_aj_sidak <- 1 - (1 - pbrutos)^m
print(p_aj_sidak)
print(p.adjust(pbrutos[!is.na(pbrutos)], method = "holm"))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

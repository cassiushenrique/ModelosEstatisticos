# Games–Howell ----

# Ajuste e resultados ----
if (!requireNamespace("rstatix", quietly = TRUE)) install.packages("rstatix")
library(rstatix)
print(games_howell_test(warpbreaks, breaks ~ tension,
                        conf.level = 0.95))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

# Ryan–Einot–Gabriel–Welsch (REGW) ----

# Ajuste e resultados ----
if (!requireNamespace("agricolae", quietly = TRUE)) install.packages("agricolae")
library(agricolae)
modelo <- aov(breaks ~ tension, data = warpbreaks)
resultado <- REGW.test(modelo, "tension", alpha = 0.05,
                       group = TRUE, console = TRUE)
print(resultado$groups)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, main = "Quebras de fios por tensão", xlab = "Tensão", ylab = "Quebras")
stripchart(breaks ~ tension, data = warpbreaks, vertical = TRUE, method = "jitter", pch = 19, xlab = "Tensão", ylab = "Quebras")

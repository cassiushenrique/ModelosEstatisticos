# Teste de Yuen (grupos independentes) ----

# Ajuste e resultados ----
if (!requireNamespace("WRS2", quietly = TRUE)) install.packages("WRS2")
library(WRS2)
d <- droplevels(subset(warpbreaks, tension %in% c("L", "H")))
resultado <- yuen(breaks ~ tension, data = d, tr = 0.2)
print(resultado)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios")

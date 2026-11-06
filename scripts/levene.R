# Levene–Brown–Forsythe ----

# Ajuste e resultados ----
if (!requireNamespace("car", quietly = TRUE)) install.packages("car")
library(car)
boxplot(breaks ~ tension, data = warpbreaks,
        xlab = "Tensão", ylab = "Quebras")
print(leveneTest(breaks ~ tension, data = warpbreaks, center = median))

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, data = warpbreaks, xlab = "Tensão", ylab = "Quebras de fios", main = "Dispersão por tensão")

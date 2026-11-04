# Levene–Brown–Forsythe
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("car", quietly = TRUE)) install.packages("car")
library(car)
boxplot(breaks ~ tension, data = warpbreaks,
        xlab = "Tensão", ylab = "Quebras")
print(leveneTest(breaks ~ tension, data = warpbreaks, center = median))

# Levene–Brown–Forsythe
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("car", quietly = TRUE)) install.packages("car")
library(car)
boxplot(breaks ~ tension, data = warpbreaks,
        xlab = "Tensão", ylab = "Quebras")
print(leveneTest(breaks ~ tension, data = warpbreaks, center = median))

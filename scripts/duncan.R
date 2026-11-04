# Duncan
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("agricolae", quietly = TRUE)) install.packages("agricolae")
library(agricolae)
modelo <- aov(breaks ~ tension, data = warpbreaks)
resultado <- duncan.test(modelo, "tension", alpha = 0.05)
print(resultado$groups)

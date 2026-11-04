# Duncan
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("agricolae", quietly = TRUE)) install.packages("agricolae")
library(agricolae)
modelo <- aov(breaks ~ tension, data = warpbreaks)
resultado <- duncan.test(modelo, "tension", alpha = 0.05)
print(resultado$groups)

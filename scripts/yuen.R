# Teste de Yuen (grupos independentes)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("WRS2", quietly = TRUE)) install.packages("WRS2")
library(WRS2)
d <- droplevels(subset(warpbreaks, tension %in% c("L", "H")))
resultado <- yuen(breaks ~ tension, data = d, tr = 0.2)
print(resultado)

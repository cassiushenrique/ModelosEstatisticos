# Dunnett C
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("rstatix", quietly = TRUE)) install.packages("rstatix")
library(rstatix)
# Alternativa heterocedástica, NÃO é Dunnett C.
print(games_howell_test(warpbreaks, breaks ~ tension,
                        conf.level = 0.95))

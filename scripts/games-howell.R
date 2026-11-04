# Games–Howell
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("rstatix", quietly = TRUE)) install.packages("rstatix")
library(rstatix)
print(games_howell_test(warpbreaks, breaks ~ tension,
                        conf.level = 0.95))

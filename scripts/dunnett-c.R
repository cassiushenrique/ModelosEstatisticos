# Dunnett C
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("rstatix", quietly = TRUE)) install.packages("rstatix")
library(rstatix)
# Alternativa heterocedástica, NÃO é Dunnett C.
print(games_howell_test(warpbreaks, breaks ~ tension,
                        conf.level = 0.95))

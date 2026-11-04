# ANOVA de medidas repetidas
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("ez", quietly = TRUE)) install.packages("ez")
library(ez)
d <- CO2
d$Plant <- factor(d$Plant); d$conc <- factor(d$conc)
resultado <- ezANOVA(data = d, dv = .(uptake), wid = .(Plant),
                     within = .(conc), detailed = TRUE)
print(resultado)

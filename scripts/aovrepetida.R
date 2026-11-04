# ANOVA de medidas repetidas
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("ez", quietly = TRUE)) install.packages("ez")
library(ez)
d <- CO2
d$Plant <- factor(d$Plant); d$conc <- factor(d$conc)
resultado <- ezANOVA(data = d, dv = .(uptake), wid = .(Plant),
                     within = .(conc), detailed = TRUE)
print(resultado)

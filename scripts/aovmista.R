# ANOVA mista
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("ez", quietly = TRUE)) install.packages("ez")
library(ez)
d <- CO2
d$conc <- factor(d$conc)
d$Plant <- factor(d$Plant)
resultado <- ezANOVA(data = d, dv = .(uptake), wid = .(Plant),
                     within = .(conc), between = .(Type), detailed = TRUE)
print(resultado)

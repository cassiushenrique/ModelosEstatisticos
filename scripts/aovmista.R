# ANOVA mista
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("ez", quietly = TRUE)) install.packages("ez")
library(ez)
d <- CO2
d$conc <- factor(d$conc)
d$Plant <- factor(d$Plant)
resultado <- ezANOVA(data = d, dv = .(uptake), wid = .(Plant),
                     within = .(conc), between = .(Type), detailed = TRUE)
print(resultado)

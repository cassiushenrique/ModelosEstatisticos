# Equações de estimação generalizadas (GEE)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("geepack", quietly = TRUE)) install.packages("geepack")
library(geepack)
d <- CO2[order(CO2$Plant, CO2$conc), ]
d$Plant <- factor(d$Plant)
ajuste <- geeglm(uptake ~ conc + Type, id = Plant,
                data = d, family = gaussian(),
                corstr = "exchangeable")
print(summary(ajuste))

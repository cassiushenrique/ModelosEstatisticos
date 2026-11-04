# Teste de Friedman
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- CO2
d$conc <- factor(d$conc)
print(friedman.test(uptake ~ conc | Plant, data = d))

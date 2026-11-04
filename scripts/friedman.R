# Teste de Friedman
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

d <- CO2
d$conc <- factor(d$conc)
print(friedman.test(uptake ~ conc | Plant, data = d))

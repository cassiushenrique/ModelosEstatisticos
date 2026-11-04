# Ajuste de Bonferroni
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

print(pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                      pool.sd = FALSE, p.adjust.method = "bonferroni"))

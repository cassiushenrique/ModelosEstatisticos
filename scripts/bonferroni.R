# Ajuste de Bonferroni
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

print(pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                      pool.sd = FALSE, p.adjust.method = "bonferroni"))

# Ajuste de Šidák
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

pbrutos <- pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                          pool.sd = FALSE, p.adjust.method = "none")$p.value
m <- sum(!is.na(pbrutos))
p_aj_sidak <- 1 - (1 - pbrutos)^m
print(p_aj_sidak)
print(p.adjust(pbrutos[!is.na(pbrutos)], method = "holm"))

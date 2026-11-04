# Hochberg GT2
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

# Alternativa reproduzível com controle FWER: Holm sobre t de Welch.
# Isto NÃO implementa exatamente Hochberg GT2.
resultado <- pairwise.t.test(warpbreaks$breaks, warpbreaks$tension,
                          pool.sd = FALSE, p.adjust.method = "holm")
print(resultado)

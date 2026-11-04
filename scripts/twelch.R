# Teste t de Welch (dois grupos)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- subset(warpbreaks, tension %in% c("L", "H"))
resultado <- t.test(breaks ~ tension, data = d,
                    var.equal = FALSE, conf.level = 0.95)
print(resultado)

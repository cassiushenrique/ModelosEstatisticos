# Qui-quadrado de aderência
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

freq <- table(mtcars$gear)
print(freq)
resultado <- chisq.test(freq, p = rep(1 / length(freq), length(freq)))
print(resultado)
print(resultado$expected)

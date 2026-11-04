# Qui-quadrado de independência
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

tab <- table(cilindros = mtcars$cyl, transmissao = mtcars$am)
resultado <- chisq.test(tab)
print(tab); print(resultado)
print(resultado$expected)
print(round(resultado$stdres, 2))

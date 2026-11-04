# Teste exato de Fisher
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

tab <- table(mtcars$vs, mtcars$am)
resultado <- fisher.test(tab, conf.level = 0.95)
print(tab); print(resultado)

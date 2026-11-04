# Teste t de Student (dois grupos)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

resultado <- t.test(mpg ~ am, data = mtcars,
                    var.equal = TRUE, conf.level = 0.95)
print(resultado)
boxplot(mpg ~ am, data = mtcars, names = c("Automática", "Manual"))
